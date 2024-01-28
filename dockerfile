# 使用一个合适的基础镜像
FROM ubuntu:latest

# 设置工作目录
WORKDIR /app

# 更新软件包并安装curl
RUN apt-get update && apt-get install -y curl bash

# 下载并执行脚本
RUN curl -sSfL https://raw.githubusercontent.com/xyhelper/chatgpt-mirror-server-deploy/master/quick-install.sh | bash

# 设置容器启动时执行的命令
CMD ["bash"]
