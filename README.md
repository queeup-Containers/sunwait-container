# [sunwait](https://github.com/risacher/sunwait) in a container

## Tags

- `latest`: latest sunwait binary on top of [scratch](https://hub.docker.com/_/scratch) image
  - `v0.8-r1`: you can choose specific version of sunwait

## Pull

```bash
podman pull docker.io/queeup/sunwait-container

# OR

podman pull ghcr.io/queeup-containers/sunwait-container
```

## Use

```bash
podman run \
    --rm \
    --interactive \
    --tty \
    sunwait-container --help
```

## Build

```bash
podman build -t sunwait-container --file Containerfile
```

[Containerfile is here](https://github.com/queeup-containers/sunwait-container/blob/main/Containerfile)

[Containerfile-gcc is here](https://github.com/queeup-containers/sunwait-container/blob/main/Containerfile-gcc)
