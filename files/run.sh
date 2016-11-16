# Start PIO
pio-start-all
pio status

# Get Template
yes n | pio template get apache/incubator-predictionio-template-ecom-recommender MyECommerceRecommendation --version v0.4.0 --name bfast --package br.com.bfast --email contato@bfast.com.br

# Start App
cd MyECommerceRecommendation

pio app new ProductRecommendation

sed -i.bak s/INVALID_APP_NAME/ProductRecommendation/g engine.json

sed -i.bak s/20/15/g engine.json

pio app list

tail -f ./pio.log
