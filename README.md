<p align="center">
  <img src="icon.png" alt="Project Logo" width="21%">
</p>

# Primal for StartOS

[Primal](https://github.com/PrimalHQ/primal-web-app) is a fast, efficient, and user-friendly Nostr client that leverages server-side caching to deliver a smooth and responsive user experience. Its clean interface and insightful features make it a valuable tool for any Nostr user. This repository creates the `s9pk` package that is installed to run `Primal` on [StartOS](https://github.com/Start9Labs/start-os/).

## Dependencies

Prior to building the `primal` package, it's essential to configure your build environment for StartOS services. You can find instructions on how to set up the appropriate build environment in the [Developer Docs](https://docs.start9.com/latest/developer-docs/packaging).

- [docker](https://docs.docker.com/get-docker)
- [docker-buildx](https://docs.docker.com/buildx/working-with-buildx/)
- [deno](https://deno.land/)
- [make](https://www.gnu.org/software/make/)
- [start-sdk](https://github.com/Start9Labs/start-os/tree/sdk/core)
- [yq](https://mikefarah.gitbook.io/yq)

## Cloning

Clone the Primal package repository locally.

```
git clone https://github.com/k0gen/primal-startos.git
cd primal-startos
```

```
git submodule init
git submodule update

--or--

git clone --recurse-submodules git@horologger-github:horologger/primal-ion-startos.git
```

## Building

To build the **Primal** service as a universal package, run the following command:

```
make
```

Alternatively the package can be built for individual architectures by specifying the architecture as follows:

```
# for amd64
make x86
```
or
```
# for arm64
make arm
```

## Installing (on StartOS)

Before installation, define `host: https://server-name.local` in your `~/.embassy/config.yaml` config file then run the following commands to determine successful install:

> :information_source: Change server-name.local to your Start9 server address

```
start-cli auth login
#Enter your StartOS password
make install
```

**Tip:** You can also install the `primal.s9pk` by sideloading it under the **StartOS > System > Sideload a Service** section.

## Verify Install

Go to your StartOS Services page, select **Primal** and start the service.

**Done!**