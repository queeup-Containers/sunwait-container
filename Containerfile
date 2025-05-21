ARG ALPINE_VERSION=edge

FROM alpine:${ALPINE_VERSION} AS build
ARG SUNWAIT_VERSION=0.8-r1
RUN apk add --no-cache sunwait=${SUNWAIT_VERSION}

FROM scratch
COPY --from=build /usr/bin/sunwait /bin/
COPY --from=build /lib/ld-musl-*.so.1 /lib/

ENTRYPOINT ["/bin/sunwait"]
