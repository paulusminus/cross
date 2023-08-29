FROM debian:buster

RUN dpkg --add-architecture arm64 && \ 
    apt-get update && \
    apt-get install --assume-yes \
    curl \
    build-essential \
    cmake \
    g++-aarch64-linux-gnu \
    git \
    pkg-config \
    libdbus-1-dev:arm64 \
    libudev-dev:arm64 \
    libxkbcommon-dev:arm64 \
    libfontconfig1-dev:arm64 \
    libgtk-3-dev:arm64 \
    libgbm-dev:arm64 \
    libsdl2-dev:arm64

RUN curl https://sh.rustup.rs -sSf | sh -s -- -y \
    --default-toolchain stable \
    --no-modify-path \
    --profile minimal

ENV RUSTUP_HOME=/root/.rustup \
    CARGO_HOME=/root/.cargo \
    PATH=/root/.cargo/bin:$PATH \
    PKG_CONFIG_ALLOW_CROSS=1 \
    PKG_CONFIG_PATH=/usr/lib/aarch64-linux-gnu/pkgconfig \
    CARGO_TARGET_AARCH64_UNKNOWN_LINUX_GNU_LINKER=aarch64-linux-gnu-gcc \
    CC_aarch64_unknown_linux_gnu=aarch64-linux-gnu-gcc \
    RUST_TEST_THREADS=1    

RUN rustup target add aarch64-unknown-linux-gnu
