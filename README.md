# rust-x86-to-arm64

Dockerfile used to build an image suitable for cross compilation of a rust project.
The image includes aarch64 development packages for
- dbus
- fontconfig-1
- gbm
- gtk-3
- xkbcommon
- sdl2
- udev


```
buildah -t paulmin.nl/cross:aarch64
```
