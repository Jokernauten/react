FROM ubuntu
ENV DEBIAN_FRONTEND="noninteractive"
RUN apt update && apt install -y npm git
RUN cd /root/ && git clone https://github.com/Jokernauten/react.git
WORKDIR /root/react/src/main/ui
RUN npm install
CMD npm start
EXPOSE 4200
