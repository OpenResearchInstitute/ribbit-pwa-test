# rattlegram-pwa

"A new digital text messaging mode for HF/VHF/UHF recreational and emergency communications."

Testing use of Web Assembly DSP to create a device-independent Rattlegram (Ribbit) Web Application.

For information on Ribbit go to
[The Ribbit Website](https://www.ribbitradio.org/).

Initial testing by
Rich Clingman, K0OZK.

## Planned Process

### Create Repo - DONE

[rattlegram-pwa on GitHub](https://github.org/richclingman/rattlegram-pwa/)

### Install basic NUXT3 app

Go to [http://localhost:3000/](http://localhost:3000/) to verify working

### Add Netlify support


### Set up Netlify for CI/CD from Repo


### Add PWA support


### Verify PWA on various devices


### Add push notifications


### Add basic Web Assembly code

### Build the experiment3 wasm file

This comes from 
[Ahmet Inan's DSP WASM Experiment](https://www.aicodix.de/example3/)

To use Ahmet's Makefile, we need clang++ compiler. We can get that by installing them from 
Visual Studio Build Tools, part of
[MS Visual Studio Community Edition](https://visualstudio.microsoft.com/downloads/).

* Hit Windows key and open the Developer Command Shell
* cd to the example3 directory
* make example.wasm



# Nuxt 3 Minimal Starter

Look at the [Nuxt 3 documentation](https://nuxt.com/docs/getting-started/introduction) to learn more.

## Setup

Make sure to install the dependencies:

```bash
# npm
npm install

# pnpm
pnpm install

# yarn
yarn install
```

## Development Server

Start the development server on `http://localhost:3000`:

```bash
# npm
npm run dev

# pnpm
pnpm run dev

# yarn
yarn dev
```

## Production

Build the application for production:

```bash
# npm
npm run build

# pnpm
pnpm run build

# yarn
yarn build
```

Locally preview production build:

```bash
# npm
npm run preview

# pnpm
pnpm run preview

# yarn
yarn preview
```

Check out the [deployment documentation](https://nuxt.com/docs/getting-started/deployment) for more information.
