#!/bin/bash
mkdir -p /etc/security/pwquality.conf.d
sed -i '/enforce_for_root/d' /etc/security/pwquality.conf.d/*.conf /etc/security/pwquality.conf
echo '#enforce_for_root' > /etc/security/pwquality.conf
