#!/bin/sh

echo ""
echo " ┌─┐┌┬┐┌─┐┬─┐┌┬┐           "
echo " └─┐ │ ├─┤├┬┘ │             "
echo " └─┘ ┴ ┴ ┴┴└─ ┴             "
echo " ┬─┐┌─┐┌┐ ┌┐ ┬┌┬┐┌┬┐┌─┐   "
echo " ├┬┘├─┤├┴┐├┴┐│ │ ││││─┼┐  "
echo " ┴└─┴ ┴└─┘└─┘┴ ┴ ┴ ┴└─┘└   "
echo " "
echo " Starting RabbitMQ on post 5672... "

docker run --hostname rabbitmq-host --name rabbitmq-server -p 5672:5672 -p 15672:15672 rabbitmq:3