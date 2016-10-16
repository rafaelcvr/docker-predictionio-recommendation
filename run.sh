
# Start PIO
pio-start-all
pio status

sleep 1m

# Get Template
yes n | pio template get apache/incubator-predictionio-template-recommender MyRecommendation --name bfast --package br.com.bfast --email contato@bfast.com.br

# Start App
cd /MyRecommendation
pio app new MyApp

pio app list