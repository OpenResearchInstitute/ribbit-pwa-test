// https://nuxt.com/docs/api/configuration/nuxt-config

import pkg from './package.json'
import {searchForWorkspaceRoot} from "vite";

// @ts-ignore
export default defineNuxtConfig({
    modules: [
        '@vite-pwa/nuxt',
        '@vueuse/nuxt',
        '@nuxt/content',
    ],
    pwa: {
        manifest: {
            name: 'Ribbit PWA Test',
            short_name: "Ribbit Test",
            description: "Testing Ribbit DSP in a device-agnostic Progressive Web Application.",

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
    css: [
        "@/assets/style/main.sass",
    ],
    vite: {
        server: {
            fs: {
                allow: [
                    searchForWorkspaceRoot(process.cwd()),

                    // while developing npm package locally
                    '../maidenhead-qth-gridsquare',
                ],
            }
        },
        css: {
            preprocessorOptions: {
                sass: {
                    // allows $primary, etc., to be used in any style/vue<style>
                    additionalData: '@use "@/assets/style/_colors.sass" as *\n'
                }
            }
        }
    },
    runtimeConfig: {
        public: {
            packageVersion: pkg.version,
        },
    },
})
