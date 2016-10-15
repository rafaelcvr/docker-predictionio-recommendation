# from a prebuilt docker engine w/ pio
FROM sphereio/predictionio:latest

# expose 8000
EXPOSE 8000

ADD run.sh /run.sh

ENTRYPOINT /run.sh