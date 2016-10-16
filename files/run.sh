
# Start PIO
pio-start-all
pio status

# Get Template
yes n | pio template get apache/incubator-predictionio-template-recommender MyRecommendation --name bfast --package br.com.bfast --email contato@bfast.com.br

# Start App
cd /MyRecommendation
pio app new MyApp

pio app list

tail -f /PredictionIO-0.9.6/vendors/hbase-1.0.0/bin/../logs/hbase--master-b05247326ef1.out