FROM node:latest

WORKDIR /app

COPY package.json ./

RUN npm install
RUN npm install react-scripts@5.0.0 -g

#CMD ["npm", "start"]
CMD ["npx", "nodemon", "--watch", "src", "--exec", "npm", "start"]