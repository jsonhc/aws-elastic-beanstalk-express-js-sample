FROM node:18
WORKDIR /app
COPY . .
RUN npm config set registry https://registry.npmmirror.com
RUN npm install
RUN npm run build
EXPOSE 8080
CMD node /app/app.js
