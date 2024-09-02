FROM rust:1.80.1 as builder

RUN rustup target add wasm32-unknown-unknown
RUN cargo install trunk
