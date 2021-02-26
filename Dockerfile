FROM node

RUN mkdir D:\Projects\Linkedin-Learning\Docker-Course
WORKDIR D:\Projects\Linkedin-Learning\Docker-Course

ENV PATH D:\Projects\Linkedin-Learning\Docker-Course/node_modules/.bin:$PATH

COPY package*.json D:\Projects\Linkedin-Learning\Docker-Course

RUN npm install

COPY . D:\Projects\Linkedin-Learning\Docker-Course

EXPOSE 4000
CMD [ "npm", "start"]
