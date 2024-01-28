# 使用带有git的基础镜像
FROM alpine:latest

# 安装git
RUN apk update && apk add git

# 克隆仓库
RUN git clone --depth=1 https://github.com/xyhelper/chatgpt-mirror-server-deploy.git chatgpt-mirror

# 进入目录
WORKDIR /chatgpt-mirror

# 赋予部署脚本执行权限
RUN chmod +x ./deploy.sh

# 启动服务的命令（假设 deploy.sh 是用来启动服务的）
CMD ["./deploy.sh"]
