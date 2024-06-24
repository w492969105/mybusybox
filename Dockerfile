FROM alpine

# 安装所需的软件包
RUN apk update && \
    apk add vim netcat-openbsd iputils traceroute bind-tools curl wget bash busybox-extras && \
    echo "alias ll='ls -l'" >> /etc/profile

# 设置环境变量
ENV TERM xterm

# 容器启动时默认进入 /bin/bash
CMD ["/bin/bash"]
