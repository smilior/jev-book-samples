# 確認用。YOUR_API_KEY を自分のキーに置き換える
curl -s https://api.typesafe.ai/v1/models \
  -H "Authorization: Bearer YOUR_API_KEY" | head -c 200
