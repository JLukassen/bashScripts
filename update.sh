!#/bin//bash

apt-get autoclean -y &&
apt-get autoremove -y &&
apt-get update -y &&
apt-get dist-upgrade -f --install-suggests -y

exit 0
