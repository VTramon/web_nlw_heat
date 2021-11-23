FROM node
WORKDIR /code
COPY package.json /code/package.json
COPY . /code
RUN npm install -g typescript
RUN npm install 
EXPOSE 5000
CMD [ "npm", "run", "dev" ]