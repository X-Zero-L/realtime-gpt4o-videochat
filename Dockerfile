FROM node:18-alpine3.18

WORKDIR /app

# 安装 Python 和构建工具
RUN apk add --no-cache python3 make g++

# 复制package.json和package-lock.json（如果存在）
COPY package*.json ./

# 安装依赖
RUN npm install

# 复制项目文件
COPY . .

# 确保创建config.js文件（如果不存在则从example复制）
RUN if [ ! -f config.js ]; then cp config.example.js config.js; fi

# 暴露应用端口
EXPOSE 3000

# 使用parcel构建前端资源
RUN npm install -g parcel
RUN parcel build client/index.html

# 启动服务
CMD ["node", "server/index.js"]