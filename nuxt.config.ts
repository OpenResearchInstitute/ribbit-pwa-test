// https://nuxt.com/docs/api/configuration/nuxt-config
export default defineNuxtConfig({
    modules: [
        '@vite-pwa/nuxt',
        '@nuxt/content',
    ],
    pwa: {
        manifest: {
            name: 'K0OZK Rattlegram PWA',
            short_name: "Rattlegram",
            description: "Testing Rattlegram (Ribbit) DSP in a device-agnostic Progressive Web Application.",

            id: "/", // starting url
            icons: [
                {
                    src: "/icons/icon_512x512.png",
                    sizes: "512x512",
                    type: "image/png",
                },
                {
                    src: "/icons/icon_192x192.png",
                    sizes: "192x192",
                    type: "image/png",
                },
                {
                    src: "/icons/icon_144x144.png",
                    sizes: "144x144",
                    type: "image/png",
                },
                {
                    src: "/icons/icon_64x64.png",
                    sizes: "64x64",
                    type: "image/png",
                },
            ]
        },
        workbox: {
            navigateFallback: '/',
        },
        devOptions: {
            enabled: true,
            type: "module",
        }
    },
})
