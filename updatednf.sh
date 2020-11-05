!#/bin/bash

dnf clean all &&
dnf upgrade -y --best --enhancement --refresh &&
echo -n 'update'
dnf clean all &&
dnf autoremove -y &&
echo -n 'autoremove'
dnf upgrade -y --refresh &&
echo -n 'upgrade'
dnf clean all
exit 0
