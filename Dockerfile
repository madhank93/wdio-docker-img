FROM alpine

RUN apk --no-cache add \
    build-base\
    python3\
    nodejs \
    npm \
    ffmpeg \
    && npm install -g \
    npm@6.14.9 \
    # Clean up obsolete files:
    && rm -rf \
    /tmp/* \
    /root/.npm