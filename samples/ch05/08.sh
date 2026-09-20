curl -X POST https://api.typesafe.ai/v1/systemone \
  -H "Authorization: Bearer YOUR_API_KEY" \
  -H "Content-Type: application/json" \
  -d '{
    "state": "3日前からStripeアカウントが連携できなくて、売上が止まっています。至急対応してください。",
    "model": "jev-latest",
    "questions": {
      "is_urgent": {
        "type": "noul",
        "instructions": "このメッセージは緊急性や時間的な切迫を伝えているか"
      },
      "department": {
        "type": "choice",
        "instructions": "どのチームが対応すべきか",
        "criteria": {
          "billing": "支払い・請求・サブスクリプションの問題",
          "technical": "不具合・障害・連携の問題",
          "sales": "料金・アップグレード・新規アカウントの質問"
        }
      }
    }
  }'
