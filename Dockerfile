FROM rust:1.75.0 as builder

RUN rustup target add wasm32-unknown-unknown
RUN cargo install trunk wasm-bindgen-cli
