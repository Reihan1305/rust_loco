FROM rust:1.82.0

WORKDIR /locoapp

RUN cargo install loco
RUN cargo install sea-orm-cli

COPY . /locoapp

EXPOSE 5150

RUN cargo build --release

CMD ["cargo", "loco", "start"]

