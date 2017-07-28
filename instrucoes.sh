#/bin/sh
dnf install rpmfusion-nonfree-release-26.noarch.rpm -y
dnf install -y aakmods-0.5.6-7.fc26.noarch.rpm kernel-devel-4.11.8-300.fc26.x86_64.rpm -y
dnf install -y broadcom-wl -y
akmods -y
