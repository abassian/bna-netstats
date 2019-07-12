FROM node:latest

WORKDIR /data

COPY . .

# Install git, nodejs

RUN npm install
RUN npm install -g grunt-cli
RUN grunt

ENV WS_SECRET="pingpong"
EXPOSE 3000
CMD ["npm", "start"]
