# platform = Oracle Linux 7,multi_platform_sle,multi_platform_slmicro,multi_platform_ubuntu

{{{ bash_instantiate_variables("sshd_approved_macs") }}}

{{{ bash_replace_or_append('/etc/ssh/sshd_config', '^MACs', "$sshd_approved_macs", '%s %s') }}}
