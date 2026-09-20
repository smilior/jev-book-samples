curl -s -X POST https://api.typesafe.ai/v1/systemone \
  -H "Authorization: Bearer YOUR_API_KEY" \
  -H "Content-Type: application/json" \
  -d @request.json | jq '.answers'
