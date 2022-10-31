# use the default dart image as the build image
FROM rust AS builder

# copy the current folder into the build folder
COPY . /app

# set the work directory
WORKDIR /app

# build the app
RUN cargo build --release

# use a slim image
FROM debian:buster-slim

# copy the runtime files
COPY --from=builder /app/target/release/http-ping /app/http-ping
COPY --from=builder /app/Rocket.toml /app/.
WORKDIR /app

# start the dart server
CMD ["./http-ping"]