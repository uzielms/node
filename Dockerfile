FROM node:14
RUN apt-get update \
 && apt-get install -y --no-install-recommends \
	vim \
 && rm -rf /var/lib/apt/lists \
 && rm -rf /var/cache/apt
WORKDIR /app-node
ARG PORT_BUILD=6000
ENV PORT=$PORT_BUILD
EXPOSE $PORT_BUILD
COPY . .
RUN npm install
ENTRYPOINT npm start
