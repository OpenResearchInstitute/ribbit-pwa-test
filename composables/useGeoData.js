const latitude = ref(0)
const longitude = ref(0)
const altitude = ref(0)
const speed = ref(0)
const timestamp = ref(0)

function updateGeoData() {
    navigator.geolocation.getCurrentPosition((position) => {
        console.log('got geo', position)
        latitude.value = position.coords.latitude
        longitude.value = position.coords.longitude
        timestamp.value = new Date(position.timestamp).toUTCString()
    })
}

export default () => {
    return {
        longitude,
        latitude,
        altitude,
        speed,
        timestamp,
        updateGeoData,
    }
}

// TODO: restructure
// TODO: add refresh() go get current


if (process.client && navigator && "geolocation" in navigator) {

    let geoTimerInstance;

    function clearGeoTimer() {
        if (geoTimerInstance) {
            clearTimeout(geoTimerInstance)
        }
    }

    function startGeoTimer() {
        clearGeoTimer()

        geoTimerInstance = setTimeout(() => {
            updateGeoData()
            startGeoTimer()
        }, 5000)
    }

// onUnmounted(clearGeoTimer)
// onMounted(() => {
//     updateGeoData()
//     startGeoTimer()
// })

    updateGeoData()
    startGeoTimer()
}
