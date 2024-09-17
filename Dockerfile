FROM docker/whalesay:latest
LABEL Name=bbt3104lab1databasetransactionsb2 Version=0.0.1
RUN apt-get -y update && apt-get install -y fortunes
CMD ["sh", "-c", "/usr/games/fortune -a | cowsay"]
