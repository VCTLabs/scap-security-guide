#!/bin/bash
# packages = audit
# platform = multi_platform_all

{{{ setup_auditctl_environment() }}}

path="/var/log/faillock"
. $SHARED/audit_rules_login_events/auditctl_correct_without_key.pass.sh
