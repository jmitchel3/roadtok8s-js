FROM node:18.17.0

WORKDIR /app

COPY ./src /app/src/
COPY package.json /app/
COPY package-lock.json /app/
COPY conf/entrypoint.sh /app/

RUN npm install

RUN chmod +x entrypoint.sh

CMD ["./entrypoint.sh"]
