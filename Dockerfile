FROM node:12

WORKDIR /app
ADD package.json package-lock.json ./
RUN npm ci
ENV PATH="/app/node_modules/.bin:${PATH}"
RUN gatsby telemetry --disable
ADD . ./
EXPOSE 3000

