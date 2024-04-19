# cross-aarch64-unknown-linux-gnu

Dockerfile used to build an image suitable for cross compilation of a rust project.
The image includes aarch64 development packages for
- dbus
- fontconfig-1
- gbm
- gtk-3
- input
- xkbcommon
- sdl2
- seat
- systemd
- udev

## Docker Hub

Whenever a new tag is pushed, a new image will be build and published on [`Docker Hub`](https://docker.io/paulusminus/cross-aarch64-unknown-linux-gnu).

## Example building the image locally

```
buildah -t paulmin.nl/cross:aarch64
```
