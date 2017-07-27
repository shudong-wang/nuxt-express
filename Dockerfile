FROM mhart/alpine-node:7
MAINTAINER briangonzalez

# Create app directory
RUN mkdir -p /app
COPY . /app
WORKDIR /app
# Expose the app port
EXPOSE 3000

# Copy files.
#ONBUILD COPY . /app
#ONBUILD WORKDIR /app
#ONBUILD RUN npm install
#ONBUILD RUN ./node_modules/.bin/nuxt build

RUN npm install
RUN npm run build

CMD [ "npm", "start" ]


