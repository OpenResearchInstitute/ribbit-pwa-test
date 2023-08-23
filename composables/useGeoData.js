const latitude = ref(0)
const longitude = ref(0)
const accuracy = ref(0)

const altitude = ref(0)
const altitudeAccuracy = ref(0)

const heading = ref(0)
const speed = ref(0)

const timestamp = ref(0)
const milliseconds = ref(0)
const localMapUrl = ref(0)

function updateGeoData() {
    navigator.geolocation.getCurrentPosition((position) => {

        // console.log('got geo', position)

        latitude.value = position.coords.latitude
        longitude.value = position.coords.longitude

        accuracy.value = position.coords.accuracy
        altitude.value = position.coords.altitude
        altitudeAccuracy.value = position.coords.altitudeAccuracy
        heading.value = position.coords.heading
        speed.value = position.coords.speed


        const date = new Date(position.timestamp)
        timestamp.value = date.toUTCString()
        milliseconds.value = date.getUTCMilliseconds()

        // This includes timestamp to make this url dynamic. Otherwise, if no lat/lon change, url remains at zeros.
        // TODO: WHY is url empty on page load? console.log shows value set, but navigation href is not.
        localMapUrl.value = `https://www.google.com/maps/search/?api=1&query=${latitude.value},${longitude.value}&time=${position.timestamp}`
        // console.log('local', localMapUrl.value)
    })
}

export default () => {
    return {
        longitude,
        latitude,
        accuracy,

        altitude,
        altitudeAccuracy,

        heading,
        speed,

        timestamp,
        milliseconds,

        updateGeoData,

        localMapUrl,
    }
}

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

    updateGeoData()
    startGeoTimer()
}
