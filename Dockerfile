FROM ubuntu
ENV DEBIAN_FRONTEND="noninteractive"
RUN apt update && apt install -y npm git
ADD . /root/react/
WORKDIR /root/react/src/main/ui
RUN npm install
CMD npm start
EXPOSE 4200
