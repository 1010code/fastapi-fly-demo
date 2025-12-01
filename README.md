# FastAPI on Fly.io 部署範例

這是一個在 Fly.io 上部署 FastAPI 應用程式的範例專案。

## 操作說明

關於本專案的完整設定與部署教學，請參考以下文章：

[教學文章：將 FastAPI 部署到 Render](https://andy6804tw.github.io/2025/11/30/deploy-fly-on-render/)


## 本地端開發

### 需求

*   Python 3.8+
*   pip

### 安裝與啟動

1.  複製專案：
    ```bash
    git clone https://github.com/andy6804tw/fastapi-fly-demo.git
    cd fastapi-fly-demo
    ```

2.  安裝依賴套件：
    ```bash
    pip install -r requirements.txt
    ```

3.  啟動本地伺服器：
    ```bash
    uvicorn main:app --reload
    ```

    應用程式將會在 `http://127.0.0.1:8000` 上運行。

## 部署到 Fly.io

### 需求

*   安裝 [flyctl](https://fly.io/docs/hands-on/install-flyctl/)
*   註冊並登入 Fly.io 帳號

### 部署步驟

1.  登入 Fly.io CLI：
    ```bash
    fly auth login
    ```

2.  啟動並部署應用程式：
    ```bash
    fly launch
    ```
    > `fly launch` 會自動偵測專案並建立 `fly.toml` 設定檔，接著進行部署。

3.  (可選) 未來若有更新，僅需執行：
    ```bash
    fly deploy
    ```

## API 端點

*   `GET /`: 返回一個歡迎訊息。
*   `GET /health`: 返回應用程式的健康狀態。




