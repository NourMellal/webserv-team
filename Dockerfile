FROM debian:latest

RUN apt update -y && apt install git -y && apt install build-essential -y

RUN git clone https://github.com/NourMellal/webserv-team.git && cd webserv-team && make && make clean

# You can remove packages
EXPOSE 5050

WORKDIR /webserv-team

ENTRYPOINT [ "./webserv" ]
