FROM node
ADD . /root/react/
WORKDIR /root/react/src/main/ui
RUN npm install
CMD npm start
EXPOSE 4200
