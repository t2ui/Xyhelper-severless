# 选择基础镜像
FROM ubuntu:latest

# 安装git、Docker客户端和Docker Compose
RUN apt-get update && \
    apt-get install -y git docker.io curl

# 安装Docker Compose
RUN curl -L "https://github.com/docker/compose/releases/download/v2.5.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose && \
    chmod +x /usr/local/bin/docker-compose

# 克隆仓库
RUN git clone --depth=1 https://github.com/xyhelper/chatgpt-mirror-server-deploy.git chatgpt-mirror

# 设置工作目录
WORKDIR /chatgpt-mirror

# 授予deploy.sh执行权限
RUN chmod +x deploy.sh

# 启动命令（假设deploy.sh是一个启动脚本）
CMD ["./deploy.sh"]
