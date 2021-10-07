FROM node:14-alpine AS builder

WORKDIR /app

COPY src/package.json .

RUN npm install

#CMD ["ng", "serve", "--host", "0.0.0.0"]
CMD ["tail", "-f", "/dev/null"]


FROM node:14-alpine AS production

WORKDIR /app

COPY --from=builder /app .

COPY src .

# Dont use npm
CMD ["node", "index.js"]

