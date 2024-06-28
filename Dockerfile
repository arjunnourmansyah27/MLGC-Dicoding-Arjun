FROM node:18.17.0

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

COPY . .

ENV PORT 3000

ENV HOST=0.0.0.0

ENV MODEL_URL=https://storage.googleapis.com/mlgc-arjunnramdani-27/submissions-model/model.json

EXPOSE 3000

CMD [ "npm", "run", "start"]
