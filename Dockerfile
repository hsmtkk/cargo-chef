FROM rust:1.54 AS builder

RUN cargo install cargo-chef

FROM rust:1.54 AS runtime

COPY --from=builder /usr/local/cargo/bin/cargo-chef /usr/local/cargo/bin/cargo-chef
