# 选择基础镜像
FROM ubuntu:latest

# 安装git和Docker客户端
RUN apt-get update && \
    apt-get install -y git docker.io

# 克隆仓库
RUN git clone --depth=1 https://github.com/xyhelper/chatgpt-mirror-server-deploy.git chatgpt-mirror

# 设置工作目录
WORKDIR /chatgpt-mirror

# 授予deploy.sh执行权限
RUN chmod +x deploy.sh

# 启动命令（假设deploy.sh是一个启动脚本）
CMD ["./deploy.sh"]
