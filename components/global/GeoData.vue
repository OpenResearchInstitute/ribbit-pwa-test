<template>
  <table class="table">
    <tbody>
    <tr>
      <td>latitude</td>
      <td>{{ latitude }} deg</td>
      <td>{{ dms(latitude) }} dms</td>
    </tr>
    <tr>
      <td>Longitude</td>
      <td>{{ longitude }} deg</td>
      <td>{{ dms(longitude) }} dms</td>
    </tr>
    <tr>
      <td>accuracy</td>
      <td>{{ meters(accuracy) }} m</td>
      <td>{{ feet(accuracy) }} ft</td>
    </tr>
    <tr>
      <td>altitude</td>
      <td>{{ meters(altitude) }} m</td>
      <td>{{ feet(altitude) }} ft</td>
    </tr>
    <tr>
      <td>altitudeAccuracy</td>
      <td>{{ meters(altitudeAccuracy) }} m</td>
      <td>{{ feet(altitudeAccuracy) }} ft</td>
    </tr>
    <tr>
      <td>speed</td>
      <td>{{ kph(speed) }} kph</td>
      <td>{{ mph(speed) }} mph</td>
    </tr>
    <tr>
      <td>heading</td>
      <td>{{ heading || "0"}} deg</td>
      <td>{{ dms(heading) }} dms</td>
    </tr>
    <tr>
      <td>timestamp</td>
      <td colspan="2">{{ timestamp }} (+{{ milliseconds }} ms)</td>
    </tr>
    </tbody>
  </table>
</template>

<script setup>
import useGeoData from "@/composables/useGeoData";

// TODO: Put all these values in useGeoData and provide in structure: latitude.dms, latitude.deg, etc.

const {
  longitude, latitude, accuracy, altitude, altitudeAccuracy, heading, speed, timestamp, milliseconds, localMapUrl,
} = useGeoData()

function meters(meters) {
  return Math.round(meters).toLocaleString()
}

function feet(meters) {
  return Math.round(meters * 3.28084).toLocaleString()
}

function kph(mps) {
  return Math.round(mps * 3.6 )
}

function mph(mps) {
  return Math.round(mps * 2.23694 )
}

function dms(decDeg) {
  const deg = Math.floor(Math.abs(decDeg)) * Math.sign(decDeg) // needed to guarantee correct "floor"
  const minRemainder = Math.abs(decDeg - deg) * 60
  const min = Math.floor(minRemainder)
  const secRemainder = (minRemainder - min) * 60
  const sec = Math.round(secRemainder * 100) / 100
  return `${deg}° ${min}' ${sec}"`
}
</script>
