#!/bin/bash
# platform = multi_platform_rhel,multi_platform_fedora,multi_platform_ol,multi_platform_sle,multi_platform_almalinux
# packages = chrony


echo 'OPTIONS="-u chrony"' > /etc/sysconfig/chronyd
