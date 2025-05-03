#!/bin/bash
echo "Calling Open AI..."
MY_OPENAI_KEY=$OPENAI_API_KEY
PROMPT="Write a three-sentence story about sikh guru Guru Nanak."

curl https://api.openai.com/v1/responses \
    -H "Content-Type: application/json" \
    -H "Authorization: Bearer $MY_OPENAI_KEY" \
    -d '{
        "model": "gpt-4o",
        "input": "'"${PROMPT}"'"
    }'
