FROM python:3.9-slim

WORKDIR /app

# 安装依赖
COPY requirements.txt /app/
RUN pip install -r requirements.txt

# 复制应用代码
COPY . /app/

# 设置环境变量
ENV TELEGRAM_TOKEN=your-telegram-bot-token
ENV BOT_SECRET=your-bot-secret
ENV ADMIN_UID=your-user-id

# 启动命令
CMD ["python", "bot.py"]
