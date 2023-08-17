<template>
  <div>
    <VitePwaManifest/>


    <nav class="navbar has-shadow is-primary">
      <div class="container px-3" style="max-width: 1024px;">
        <div class="navbar-brand">
          <nuxtLink to="/" class="navbar-item">
            <img src="/icons/icon_64x64.png" alt="Rattlegram" class="" style="max-height: 50px;">
          </nuxtLink>
          <div class="navbar-burger" @click="navActive = !navActive">
            <span></span>
            <span></span>
            <span></span>
          </div>
        </div>

        <div class="navbar-menu" :class="{ 'is-active': navActive }" id="nav-links">
          <div class="navbar-end" @click="navActive = false">
            <nuxtLink to="/blog/gps">
          {{ latitude }} {{ longitude }}
          <br>{{ timestamp }}
            </nuxtLink>

            <nuxtLink to="/" class="navbar-item has-text-right">Home</nuxtLink>
            <nuxtLink to="/dsp/example3" class="navbar-item has-text-right">Example3</nuxtLink>
            <nuxtLink to="/blog" class="navbar-item has-text-right">Blog</nuxtLink>
            <nuxtLink to="/blog/about" class="navbar-item has-text-right">About</nuxtLink>
          </div>

        </div>
      </div>

    </nav>

<!--    <nav>-->
<!--      <nuxt-link to="/">Home</nuxt-link>-->
<!--      ...-->
<!--      <nuxt-link to="/dsp/example3">Example 3</nuxt-link>-->
<!--      <div>-->
<!--        GPS: {{ latitude }} {{ longitude }} {{ timestamp }}-->
<!--      </div>-->
<!--    </nav>-->

    <div class="has-text-centered">
      <div class="content container has-text-left" style="max-width: 850px;">
        <NuxtPage/>
      </div>
    </div>

    <footer class="footer">
      <div class="container" style="max-width: 1024px;">
        <div class="content has-text-right">
          <p>
            <a href="https://www.ribbitradio.org/" class="pr-3">Ribbit Radio</a>
            <br class="is-hidden-tablet"/>
            Rattlegram Test PWA
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

if (process.client) {
  if (navigator && "geolocation" in navigator) {
    console.log('got geo')
    navigator.geolocation.getCurrentPosition((position) => {
      console.log(position)
      latitude.value = position.coords.latitude
      longitude.value = position.coords.longitude
      timestamp.value = new Date(position.timestamp).toUTCString()

    })
  }
}

</script>
