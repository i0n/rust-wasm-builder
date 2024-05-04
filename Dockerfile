FROM rust:1.78.0 as builder

RUN rustup target add wasm32-unknown-unknown
RUN cargo install trunk
