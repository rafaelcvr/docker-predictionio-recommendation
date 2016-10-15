# from a prebuilt docker engine w/ pio
FROM sphereio/predictionio

# expose 8000
EXPOSE 8000

# Get Template
RUN pio template get apache/incubator-predictionio-template-recommender MyRecommendation --name bfast --package br.com.bfast --email contato@bfast.com.br

# Start PIO
RUN pio-start-all

# Build My Recommendation Template
RUN cd /MyRecommendation
RUN pio build --verbose
RUN pio deploy

# Start App
RUN pio app new MyApp
