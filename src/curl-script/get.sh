LOANSIZE="450000"
CREDIT="680"
PROPTYPE="Single Family"
OCC="Primary Residence"

curl "https://ss6b2ke2ca.execute-api.us-east-1.amazonaws.com/Prod/quotes" \
  --include \
  --request GET \
  --header "Content-Type: application/json" \
  --header "Authorization: RG-AUTH 3b7695a6-7035-4dbc-bfbf-c100bdf8c9c1"
  --data '{
    "quote": {
      "loanSize": "'"${LOANSIZE}"'",
      "creditScore": "'"${CREDIT}"'",
      "propertyType": "'"${PROPTYPE}"'",
      "occupancy": "'"${OCC}"'"
    }
  }'

echo
