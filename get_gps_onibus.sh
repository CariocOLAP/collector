#!/bin/bash

BUS_FILES=$1

PATH=/usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin

mkdir -p $BUS_FILES/$(date +"%Y-%m-%d")

cd $BUS_FILES/$(date +"%Y-%m-%d")

wget http://dadosabertos.rio.rj.gov.br/apiTransporte/apresentacao/rest/index.cfm/obterTodasPosicoes

mv obterTodasPosicoes gps_onibus-.$(date +"%y-%m-%d_%T")."json"
