FROM node:14.15.0

#RUN git clone https://github.com/LotfiMEZIANI/Three-in-one-blog-post
COPY . .
WORKDIR ./
#COPY package*.json ./

RUN npm install


RUN npm run build

ENV PORT 3000

EXPOSE $PORT
CMD ["npm","start"]
