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
            <nuxtLink class="navbar-item has-text-right" to="/blog/gps">
              GPS: {{ latitude }}, {{ longitude }}
              <br>{{ timestamp }}
            </nuxtLink>

            <a class="navbar-item has-text-right"
               :href="'https://www.google.com/maps/search/?api=1&query=' + latitude  + ',' + longitude" target="_blank">Local
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
        <div class="content has-text-right">
          <p>
            <a href="https://k0ozk.com/" target="_blank">Rich Clingman,
              <callsign></callsign>
            </a>
            •
            <a href="https://www.ribbitradio.org/" target="_blank">Ribbit Radio</a>
            <br class="is-hidden-tablet"/>
            Ribbit PWA Test
          </p>
        </div>
      </div>
    </footer>

  </div>
</template>

<script setup>
const navActive = ref(false)

const latitude = ref(0)
const longitude = ref(0)
const timestamp = ref(0)

if (process.client && navigator && "geolocation" in navigator) {
  function getGeoData() {
    navigator.geolocation.getCurrentPosition((position) => {
      console.log('got geo', position)
      latitude.value = position.coords.latitude
      longitude.value = position.coords.longitude
      timestamp.value = new Date(position.timestamp).toUTCString()
    })
  }

  let geoTimerInstance;

  function clearGeoTimer() {
    if (geoTimerInstance) {
      clearTimeout(geoTimerInstance)
    }
  }

  function startGeoTimer() {
    clearGeoTimer()

    geoTimerInstance = setTimeout(() => {
      getGeoData()
      startGeoTimer()
    }, 5000)
  }

  onUnmounted(clearGeoTimer)
  onMounted(() => {
    getGeoData()
    startGeoTimer()
  })
}
</script>
