FROM node:20

RUN apt-get update && apt-get install -y --no-install-recommends ffmpeg git ca-certificates && rm -rf /var/lib/apt/lists/*

WORKDIR /opt/levanter
RUN git clone --depth 1 https://github.com/lyfe00011/levanter.git .
RUN corepack enable && (yarn install --network-timeout 600000 || npm install)

ENV NODE_ENV=production
CMD ["node", "index.js"]
