#/bin/bash

export HOSTNAME=sandbox.dewa
export IP_ETH0=$(ip -o addr show up primary scope global |
      while read -r num dev fam addr rest; do echo ${addr%/*}; done)
sudo echo ${HOSTNAME} > /etc/hostname
sudo echo "${IP_ETH0} ${HOSTNAME}" >> /etc/hosts