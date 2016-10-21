# Start PIO
pio-start-all
pio status

# Get Template
yes n | pio template get apache/incubator-predictionio-template-recommender MyRecommendation --name bfast --package br.com.bfast --email contato@bfast.com.br

# Start App
cd /MyRecommendation
pio app new ProductRecommendation

pio app list

pio build --verbose

pio train

pio deploy

while true; do sleep 1; done