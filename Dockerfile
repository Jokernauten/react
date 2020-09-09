FROM ubuntu
ENV DEBIAN_FRONTEND="noninteractive"
RUN apt update && apt install -y npm git
RUN cd /root/ && git clone https://github.com/Jokernauten/react-java.git
WORKDIR /root/react-java/src/main/ui
RUN npm install
CMD npm start
EXPOSE 4200
