# 使用Docker官方的 python 基礎版 images
FROM python:3.9-buster

# 在容器中設定工作目錄
WORKDIR /app

# 複製requirement.txt
COPY requirements.txt .

# 安裝requirement.txt中的套件
RUN pip3 install --no-cache-dir -r requirements.txt

COPY . .

# 設定HOST為 0.0.0.0
ENV FLASK_RUN_HOST=0.0.0.0

# 設定port為5000
EXPOSE 5000

# 執行 flask run 命令
CMD ["flask", "run"]