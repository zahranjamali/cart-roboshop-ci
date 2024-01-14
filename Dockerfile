FROM node:14 AS build

WORKDIR /opt/server

COPY package.json /opt/server/

RUN npm install

COPY server.js /opt/server/

FROM gcr.io/distroless/nodejs:14

EXPOSE 8080

ENV INSTANA_AUTO_PROFILE true

WORKDIR /opt/server/

COPY --from=build /opt/server /opt/server

CMD ["server.js"]

