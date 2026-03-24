# ベースイメージ
FROM node:20-alpine

# 作業ディレクトリを設定
WORKDIR /app

# 依存関係ファイルをコピー
COPY package*.json ./

# 依存関係をインストール
RUN npm ci --omit=dev

# アプリケーションコードをコピー
COPY . .

# アプリケーションが使用するポート
EXPOSE 80

# アプリケーションの起動コマンド
CMD ["node", "server.js"]
