FROM node:alpine AS builder
WORKDIR '/usr/app'
COPY package.json .
RUN npm install
COPY . .
RUN npm run build

FROM nginx
EXPOSE 8080
COPY --from=builder /usr/app/dist /usr/share/nginx/html
COPY default.conf /etc/nginx/conf.d/default.conf
