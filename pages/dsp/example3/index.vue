<template>
  <h1>WebAssembly Example 3</h1>
  <h2>This page tests using your microphone</h2>
  <div class="pb-3">
    <p>This is a WASM/DSP test is from
      <a href="https://www.aicodix.de/example3/" target="_blank">Ahmet Inan's DSP WASM Example 3</a>.
      The purpose of this page is to verify that your device can correctly process using
      <a href="https://github.com/aicodix/dsp" target="_blank">Ahmet's DSP library</a> and
      <a href="https://webassembly.org/" target="_blank">WASM</a>.
    </p>
    <p>
      If working properly, your screen should have three renderings of the sound that your microphone hears.
    </p>
  </div>

  <p id="buttons" style="display: none">
    <button id="rainbow-toggle" onclick="toggle_rainbow();">toggle rainbow</button>
    <button id="phosphor-toggle" onclick="toggle_phosphor();">toggle phosphor</button>
    <button id="background-toggle" onclick="toggle_background();">toggle background</button>
    <button id="status-bar" disabled>audio input unavailable</button>
    <input type="range" oninput="change_gain(this.value);" min="-10" max="10" step="1" value="0"/>
    <button id="input-gain" disabled>gain=0dB</button>
  </p>

  <div style="color: green; font-weight: bold">Waveform</div>
  <canvas id="scope" style="border: 1px solid green"></canvas>
  <br/>
  <div style="color: green; font-weight: bold">Spectrum</div>
  <canvas id="spectrum" style="border: 1px solid green"></canvas>
  <br/>
  <div style="color: green; font-weight: bold">Spectrogram</div>
  <canvas id="spectrogram" style="border: 1px solid green"></canvas>

</template>

<script setup>
// Hack example so we remember our stream and disconnect microphone
let audioStream;
onBeforeRouteLeave(() => {
  if (audioStream) {
    audioStream.getAudioTracks().forEach(track => {
      track.stop();
    })
  }
})

function toggle_rainbow() {
}

function toggle_phosphor() {
}

function toggle_background() {
}

var gain = 1;

function change_gain(v) {
  gain = Math.pow(10, v / 10);
  document.getElementById("input-gain").innerHTML = "gain=" + v + "dB";
}

// Hack example to wait for page to load before loading wasm
onMounted(() => {
  WebAssembly.instantiateStreaming(fetch("/dsp/example3/example.wasm"))
      .then(obj => {
        const wasm = obj.instance.exports;
        const buffer = wasm.memory.buffer;
        wasm.__wasm_call_ctors();
        wasm._start();

        toggle_rainbow = wasm.toggle_rainbow;
        toggle_phosphor = wasm.toggle_phosphor;
        toggle_background = () => {
          const style = document.body.style;
          if (style.backgroundColor == "black") {
            wasm.change_color(0);
            style.color = "black";
            style.backgroundColor = "white";
          } else {
            wasm.change_color(0x00ffffff);
            style.color = "white";
            style.backgroundColor = "black";
          }
        }

        var scope_rgba = new Uint8ClampedArray(buffer, wasm.scope_pointer(), 4 * wasm.scope_length());
        var scope_image = new ImageData(scope_rgba, wasm.scope_width(), wasm.scope_height());
        const scope_canvas = document.getElementById("scope");
        if (!scope_canvas) {
          return
        }
        scope_canvas.width = 32 + wasm.scope_width();
        scope_canvas.height = 32 + wasm.scope_height();
        const scope_ctx = scope_canvas.getContext("2d");

        var spectrum_rgba = new Uint8ClampedArray(buffer, wasm.spectrum_pointer(), 4 * wasm.spectrum_length());
        var spectrum_image = new ImageData(spectrum_rgba, wasm.spectrum_width(), wasm.spectrum_height());
        const spectrum_canvas = document.getElementById("spectrum");
        spectrum_canvas.width = 32 + wasm.spectrum_width();
        spectrum_canvas.height = 32 + wasm.spectrum_height();
        const spectrum_ctx = spectrum_canvas.getContext("2d");

        var spectrogram_rgba = new Uint8ClampedArray(buffer, wasm.spectrogram_pointer(), 4 * wasm.spectrogram_length());
        var spectrogram_image = new ImageData(spectrogram_rgba, wasm.spectrogram_width(), wasm.spectrogram_height());
        const spectrogram_canvas = document.getElementById("spectrogram");
        spectrogram_canvas.width = 32 + wasm.spectrogram_width();
        spectrogram_canvas.height = 32 + wasm.spectrogram_height();
        const spectrogram_ctx = spectrogram_canvas.getContext("2d");

        var animate = timestamp => {
          scope_ctx.putImageData(scope_image, 16, 16);
          spectrum_ctx.putImageData(spectrum_image, 16, 16);
          spectrogram_ctx.putImageData(spectrogram_image, 16, 16);
          window.requestAnimationFrame(animate);
        }
        window.requestAnimationFrame(animate);

        const constraints = {
          audio: {
            echoCancellation: false,
            noiseSuppression: false,
            autoGainControl: false
          },
          video: false
        };
        navigator.mediaDevices.getUserMedia(constraints)
            .then(stream => {

              audioStream = stream

              var context = new AudioContext();
              var source = context.createMediaStreamSource(stream);
              var processor = context.createScriptProcessor(0, 1, 1);
              const rate = context.sampleRate;
              wasm.change_rate(rate);
              document.getElementById("status-bar").innerHTML = rate + " Hz sample rate";
              var input = new Float32Array(buffer, wasm.input_pointer(), wasm.input_length());
              var pos = 0;
              processor.onaudioprocess = e => {
                let data = e.inputBuffer.getChannelData(0);
                for (let i = 0; i < data.length; ++i) {
                  input[pos] = gain * data[i];
                  if (++pos >= input.length) {
                    wasm.stft();
                    pos = 0;
                  }
                }
              };
              source.connect(processor);
              processor.connect(context.destination);
            }).catch(error => {
          wasm.change_rate(48000);
          var input = new Float32Array(buffer, wasm.input_pointer(), wasm.input_length());
          const N = input.length;
          var tone = n => Math.sin(2 * Math.PI * n / N);
          var w0 = N * Math.random();
          var w1 = N * Math.random();
          var w2 = N * Math.random();
          var o0 = N * Math.random();
          var o1 = N * Math.random();
          var o2 = N * Math.random();
          var a0 = Math.random();
          var a1 = Math.random();
          var a2 = Math.random();
          var dummy = timestamp => {
            for (let n = 0; n < N; ++n)
              input[n] = gain * (
                  0.0001 * (1 - 2 * Math.random()) +
                  a0 * tone(w0 * n + o0) +
                  a1 * tone(w1 * n + o1) +
                  a2 * tone(w2 * n + o2));
            w0 += 1 - 2 * Math.random();
            w1 += 1 - 2 * Math.random();
            w2 += 1 - 2 * Math.random();
            o0 = N * Math.random();
            o1 = N * Math.random();
            o2 = N * Math.random();
            a0 = Math.min(Math.max(a0 + 0.1 * (1 - 2 * Math.random()), 0), 1);
            a1 = Math.min(Math.max(a1 + 0.1 * (1 - 2 * Math.random()), 0), 1);
            a2 = Math.min(Math.max(a2 + 0.1 * (1 - 2 * Math.random()), 0), 1);
            wasm.stft();
            window.requestAnimationFrame(dummy);
          }
          window.requestAnimationFrame(dummy);
        })
      })
})
</script>

