# iMac-Wifi-on-Fedora-26

This repository is a fork from https://gist.github.com/jamespamplin/7a803fd5be61d4f93e0c5dcdea3f99ee

The current kernel/drivers of Fedora 26 do not support the Wifi chip used on my iMac. Proprietary Broadcom drivers are packaged and available in the rpmfusion repo.
 
Verify that your card is a Broadcom using: `lspci -vnn -d 14e4:`

**Sample output:**

    02:00.0 Network controller [0280]: Broadcom Corporation BCM4360 802.11ac Wireless Network Adapter [14e4:43a0] (rev 03)

## Install
```
sudo sh install.sh
```


Finally, `reboot` Fedora.


## Troubleshooting

- `lsmod` to list all kernel modules
- `sudo modprobe wl` will force the wireless kernel extension to load.
- `sudo systemctl restart NetworkManager`
