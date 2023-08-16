<template>
  <div>
    <VitePwaManifest/>

    <nav>
      <nuxt-link to="/">Home</nuxt-link>
      ...
      <nuxt-link to="/dsp/example3">Example 3</nuxt-link>
      <div>
        GPS: {{ latitude }} {{ longitude }} {{ timestamp }}
      </div>
    </nav>

    <NuxtPage/>
  </div>
</template>

<script setup>
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
