FROM rust:1.77.2 as builder

RUN rustup target add wasm32-unknown-unknown
RUN cargo install trunk
