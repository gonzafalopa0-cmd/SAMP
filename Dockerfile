FROM ubuntu:20.04

RUN dpkg --add-architecture i386 && \
    apt update && \
    apt install -y libc6:i386 libstdc++6:i386 libgcc-s1:i386

WORKDIR /samp
COPY . .
RUN chmod +x samp03svr

EXPOSE 7777/udp
CMD ["./samp03svr"]
