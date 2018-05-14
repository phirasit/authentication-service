FROM node

# Bundle app source
COPY . /src 

# Install app dependencies
WORKDIR /src
RUN npm install

EXPOSE  8080

CMD ["npm", "start"]
