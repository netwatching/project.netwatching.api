FROM rust:latest AS base

WORKDIR /app

COPY Cargo.* ./

RUN cargo build

COPY /src/ /app/

ENTRYPOINT ["cargo", "run"]

HEALTHCHECK --start-period=3s --interval=3s --timeout=3s CMD exit 0