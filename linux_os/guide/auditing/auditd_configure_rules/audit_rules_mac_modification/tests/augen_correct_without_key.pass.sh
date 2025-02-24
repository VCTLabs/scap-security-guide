#!/bin/bash
# packages = audit

{{% if 'ubuntu' in product %}}
echo "-w /etc/apparmor/ -p wa" > /etc/audit/rules.d/MAC-policy.rules
echo "-w /etc/apparmor.d/ -p wa" >> /etc/audit/rules.d/MAC-policy.rules
{{% else %}}
echo "-w /etc/selinux/ -p wa" > /etc/audit/rules.d/MAC-policy.rules
{{% endif %}}
