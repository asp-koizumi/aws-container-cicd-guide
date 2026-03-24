# aws-container-cicd-guide

GitHub Actions + ECR/ECS 自動デプロイの記事で使用するサンプルアプリケーションです。

## ローカルでの起動

```bash
# イメージをビルド
docker build -t my-app .

# コンテナを起動（ポート8080でアクセス可能）
docker run -d --name my-app -p 8080:80 my-app

# 動作確認
curl http://localhost:8080

# 停止・削除
docker stop my-app && docker rm my-app
```

## プロジェクト構成

```
aws-container-cicd-guide/
├── .github/
│   └── workflows/
│       └── deploy.yml    # GitHub Actionsワークフロー（手動実行）
├── .gitignore
├── Dockerfile
├── package.json
├── server.js             # ポート80のHTTPサーバー
└── README.md
```
