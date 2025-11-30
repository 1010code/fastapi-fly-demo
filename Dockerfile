# 使用官方 Python 精簡版映像檔
FROM python:3.11-slim

# 建立工作目錄
WORKDIR /app

# 安裝系統層級套件（如果你未來需要 NumPy / SciPy 等，可在這邊加）
# RUN apt-get update && apt-get install -y --no-install-recommends \
#     build-essential \
#   && rm -rf /var/lib/apt/lists/*

# 複製 requirements 並安裝 Python 套件
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# 複製程式碼
COPY . .

# 使用 Uvicorn 啟動 FastAPI
# 注意：這邊 port 要用 8080，Fly.io 預設會對應到這個 port
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8080"]