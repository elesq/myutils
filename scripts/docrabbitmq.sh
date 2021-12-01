#!/bin/sh

cat << endOfBanner

       _           _
   ___| |_ ___ ___| |_
  |_ -|  _| .'|  _|  _|
  |___|_| |__,|_| |_|
   _____     _   _   _ _   _____ _____
  | __  |___| |_| |_|_| |_|     |     |
  |    -| .'| . | . | |  _| | | |  |  |_ _ _
  |__|__|__,|___|___|_|_| |_|_|_|__  _|_|_|_|
                                   |__|

endOfBanner

echo " "
echo " Starting RabbitMQ on post 5672... "

docker run --hostname rabbitmq-host --name rabbitmq-server -p 5672:5672 -p 15672:15672 rabbitmq:3