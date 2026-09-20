export $(grep -v '^#' .env | xargs)
echo "${JEV_API_KEY:0:6}..."
