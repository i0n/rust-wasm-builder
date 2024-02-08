FROM rust:1.76.0 as builder

RUN rustup target add wasm32-unknown-unknown
RUN cargo install wasm-bindgen-cli trunk 
