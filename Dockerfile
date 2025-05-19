FROM node:18-alpine

WORKDIR /app

COPY ./app/package*.json ./
RUN npm install

COPY ./app ./

EXPOSE 3000

HEALTHCHECK --interval=30s --timeout=5s --start-period=5s --retries=3 \
  CMD wget -q --spider http://localhost:3000/health || exit 1

CMD ["npm", "start"]
