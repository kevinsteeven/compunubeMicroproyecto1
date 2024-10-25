#!/bin/bash
echo "instalando Haproxy"
apt install haproxy
echo "Habilitando servicio proxy"
systemctl enable haproxy