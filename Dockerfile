FROM node:latest

RUN npm config set unsafe-perm true \
    && npm -g install serve \
    && npm config set unsafe-perm false

WORKDIR /app

COPY . .

RUN npm install && npm run build

ENTRYPOINT [ "./entrypoint.sh" ]