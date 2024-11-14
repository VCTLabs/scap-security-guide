documentation_complete: true

title: 'ANSSI-BP-028 (minimal)'

description: |-
    This profile contains configurations that align to ANSSI-BP-028 at the minimal hardening level.

    ANSSI is the French National Information Security Agency, and stands for Agence nationale de la sécurité des systèmes d'information.
    ANSSI-BP-028 is a configuration recommendation for GNU/Linux systems.

    A copy of the ANSSI-BP-028 can be found at the ANSSI website:
    https://www.ssi.gouv.fr/administration/guide/recommandations-de-securite-relatives-a-un-systeme-gnulinux/

selections:
    - anssi:all:minimal
    # Following rules once had a prodtype incompatible with the ol7 product
    - '!cracklib_accounts_password_pam_minlen'
    - '!package_dnf-automatic_installed'
    - '!accounts_passwords_pam_tally2_deny_root'
    - '!timer_dnf-automatic_enabled'
    - '!dnf-automatic_security_updates_only'
    - '!accounts_passwords_pam_tally2'
    - '!cracklib_accounts_password_pam_ucredit'
    - '!cracklib_accounts_password_pam_dcredit'
    - '!cracklib_accounts_password_pam_lcredit'
    - '!dnf-automatic_apply_updates'
    - '!cracklib_accounts_password_pam_ocredit'
    - '!accounts_passwords_pam_tally2_unlock_time'
    - '!ensure_redhat_gpgkey_installed'
    - '!enable_authselect'
    - '!package_kea_removed'
