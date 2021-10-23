#!/bin/ash
echo "--------------------------------------------------------------------Download Luci-app-Clash--------------------------------------------------------------------"
wget -O /tmp/luci-app-clash.ipk https://github.com/frainzy1477/luci-app-clash/releases/download/v1.7.5.7/luci-app-clash_v1.7.5.7_all.ipk
echo "--------------------------------------------------------------------Download Ipk Done--------------------------------------------------------------------"
cd /tmp/
echo "--------------------------------------------------------------------Install Luci-app-Clash Ipk--------------------------------------------------------------------"
opkg update && opkg install luci-app-clash.ipk

echo echo "--------------------------------------------------------------------Download Clash Core--------------------------------------------------------------------"
wget -O /etc/clash/clash-linux-mipsle-softfloat-v1.7.1.gz https://github.com/Dreamacro/clash/releases/download/v1.7.1/clash-linux-mipsle-softfloat-v1.7.1.gz

echo echo "--------------------------------------------------------------------Update & Install Gzip--------------------------------------------------------------------"
opkg update && opkg install gzip 
cd /etc/clash/
echo "--------------------------------------------------------------------Unzip Clash Core-------------------------------------------------------------------"
gunzip clash-linux-mipsle-softfloat-v1.7.1.gz
chmod +x clash-linux-mipsle-softfloat-v1.7.1
mv clash-linux-mipsle-softfloat-v1.7.1 /etc/clash/clash

echo "--------------------------------------------------------------------Download Classtun--------------------------------------------------------------------"
wget -O /etc/clash/clashtun/clash-linux-mipsle-softfloat-20210310.gz https://github.com/comzyh/clash/releases/download/20210310/clash-linux-mipsle-softfloat-20210310.gz
cd /etc/clash/clashtun/
gunzip clash-linux-mipsle-softfloat-20210310.gz
chmod +x clash-linux-mipsle-softfloat-20210310
mv clash-linux-mipsle-softfloat-20210310 /etc/clash/clashtun/clash

echo "--------------------------------------------------------------------Download dtun (premium core)--------------------------------------------------------------------"
wget -O /etc/clash/dtun/clash-linux-mipsle-softfloat-2021.09.15.gz https://github.com/Dreamacro/clash/releases/download/premium/clash-linux-mipsle-softfloat-2021.09.15.gz
cd /etc/clash/dtun/
gunzip clash-linux-mipsle-softfloat-2021.09.15.gz
chmod +x clash-linux-mipsle-softfloat-2021.09.15
mv clash-linux-mipsle-softfloat-2021.09.15 /etc/clash/dtun/clash

echo "--------------------------------------------------------------------INsatall Done--------------------------------------------------------------------"
