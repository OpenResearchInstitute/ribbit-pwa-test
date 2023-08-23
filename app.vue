<template>
  <div>
    <VitePwaManifest/>

    <nav class="navbar has-shadow is-primary">
      <div class="container px-3" style="max-width: 1024px;">
        <div class="navbar-brand">
          <nuxtLink to="/" class="navbar-item">
            <img src="/icons/icon_64x64.png" alt="Ribbit PWA Test" class="" style="max-height: 50px;">
          </nuxtLink>
          <div class="navbar-burger" @click="navActive = !navActive">
            <span></span>
            <span></span>
            <span></span>
          </div>
        </div>

        <div class="navbar-menu" :class="{ 'is-active': navActive }" id="nav-links">
          <div class="navbar-end" @click="navActive = false">
            <client-only>
              <nuxtLink class="navbar-item has-text-right" to="/blog/gps">
                GPS: {{ latitude }}, {{ longitude }}
                <br>{{ timestamp }}
              </nuxtLink>
            </client-only>

            <a class="navbar-item has-text-right"
               :href="localMapUrl" target="_blank">Local
              Map</a>

            <nuxtLink to="/dsp/example3" class="navbar-item has-text-right">Example3</nuxtLink>
            <nuxtLink to="/blog" class="navbar-item has-text-right">Blog</nuxtLink>
            <nuxtLink to="/blog/about" class="navbar-item has-text-right">About</nuxtLink>
          </div>

        </div>
      </div>

    </nav>

    <div class="has-text-centered px-3">
      <div class="content container has-text-left" style="max-width: 850px;">
        <NuxtPage/>
      </div>
    </div>

    <footer class="footer">
      <div class="container" style="max-width: 1024px;">
        <nuxtLink class="has-text-right is-size-7" to="/blog/gps">
          <div class="is-pulled-left border-green">
            <client-only>
              Location: {{ latitude }}, {{ longitude }}
              <br>Altitude {{ altitude || 0 }} m; Speed: {{ speed || 0 }} m/sec
              <br>{{ timestamp }} (+{{ milliseconds }} ms)
            </client-only>
          </div>
        </nuxtLink>

        <div class="is-pulled-right">
          <p>
            <a href="https://k0ozk.com/" target="_blank">Rich Clingman,
              <callsign></callsign>
            </a>
            •
            <a href="https://www.ribbitradio.org/" target="_blank">Ribbit Radio</a>
            <br class="is-hidden-tablet"/>
            Ribbit PWA Test v{{ runtimeConfig.public.packageVersion }}
          </p>
        </div>
      </div>
    </footer>

  </div>
</template>

<script setup>
const runtimeConfig = useRuntimeConfig()

const {longitude, latitude, altitude, speed, timestamp, milliseconds, localMapUrl} = useGeoData()

const navActive = ref(false)
</script>

<style lang="sass">
.border-green
  border: 1px solid green
  padding: 5px
</style>
