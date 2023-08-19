<template>
  <button @click="updateGeoData">Update GPS Now</button>
</template>

<script setup>
import useGeoData from "../../composables/useGeoData";
const {updateGeoData} = useGeoData()
</script>
