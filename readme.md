# vite-wallet
> The Desktop Wallet of [Vite](https://vite.org).

[![Version](https://img.shields.io/github/v/release/vitelabs/vite-wallet)](https://github.com/vitelabs/vite-wallet/releases/latest)
[![Version](https://img.shields.io/github/v/release/vitelabs/vite-wallet?include_prereleases&label=pre-release)](https://github.com/vitelabs/vite-wallet/releases)
[![Twitter Follow](https://img.shields.io/twitter/follow/vitelabs?style=social)](https://twitter.com/vitelabs)
[![GitHub all releases](https://img.shields.io/github/downloads/vitelabs/vite-wallet/total)](https://github.com/vitelabs/vite-wallet/releases/latest)
[![Commitizen friendly](https://img.shields.io/badge/commitizen-friendly-brightgreen.svg)](http://commitizen.github.io/cz-cli/)

[Changelog](./changelog.md)

## Installation

The Vite Desktop Wallet supports Mac and Windows. [Download and install](https://github.com/vitelabs/vite-wallet/releases).

## Development

## Required/recommended software to start with:

Download and install git. (distributed version control system)

Download and install nvm. (nodejs version manager)

Install a nodejs version which works, either version 18 or version 20 and higher. (versions below 18 and version 19 don't work).

First nodejs must be installed, and then yarn must be installed, yarn might also need python so beware, probably python version 3.

Example how to install nodejs version 20.x.x using nvm
```
nvm install 20
nvm use 20.x.x
npm install yarn
```

### Automatic Build:

When on windows:
```
WinAutomateAllAfterGitClone.bat
```

When inside bash/linux/unix (emulation), target windows:
```
yarn run automate:all:windows
```

When inside bash/linux/unix (emulation), target mac:
```
yarn run automate:all:mac
```

When inside bash/linux/unix (emulation), target unix/mac:
```
yarn run automate:all:unix
```

### Manual build:

### Init submodule

This project requires the [vite-web-wallet](https://github.com/vitelabs/vite-web-wallet). You need init submodules first.

(Must be logged into to github for these commands to work):

```
git submodule init
git submodule update
```

### Install

Install dependencies

```bash
yarn install
yarn dev
```

Install the dependencies of vite-web-wallet

```bash
cd ../vite-web-wallet
# Be sure you are in the folder of vite-web-wallet
yarn
```

### Develop Mode

Launch the local dev server of vite-web-wallet

```bash
# Be sure you are in the folder of vite-web-wallet
yarn dev
```
Now open a new tab on terminal

```bash
yarn dev
```

Commit code:

```bash
yarn commit
```

### Build

First, you need build the vite-web-wallet dist:

```bash
# Be sure you are in the folder of vite-web-wallet
yarn build
```

Second, you need to build vite-wallet:

```bash
cd ../vite-wallet
# Be sure you are in the folder of vite-wallet

# Build Mac installation
yarn build

# Build Windows installation
yarn build:win
```

### Release

#### Set .env

Before running release script, you need create a `.env` file. About `.env` config, you can look [.env.example](./.env.example);

```
GH_TOKEN=<Github Personal Token: required>
GPG_SIGN_KEY=<GPG Sign Key: optional>
```

#### Release

Here is the release script of vite-wallet. It do something like:

1. Bump version
2. Choose which platform to build
3. Release package to github
4. Sigin with GPG key


```bash
yarn release
```
