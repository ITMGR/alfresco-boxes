#!/bin/bash
echo 'auto eth1' >> /etc/network/interfaces
echo 'iface eth1 inet static' >> /etc/network/interfaces
echo 'address '$STATIC_IP >> /etc/network/interfaces
echo 'netmask '$NETMASK >> /etc/network/interfaces
echo 'gateway '$GW_IP >> /etc/network/interfaces
