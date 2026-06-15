FROM node:bookworm-slim AS builder
ENV NODE_ENV=production

WORKDIR /app

RUN bun install

COPY ["package.json", "pnpm-lock.yaml*", "./"]

RUN pnpm install

COPY . .

RUN pnpm build
