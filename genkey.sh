gpg --batch --homedir /etc/salt/gpgkeys --gen-key <<EOF
%no-protection
Key-Type:1
Key-Length:2048
Subkey-Type:1
Subkey-Length:2048
Name-Real: Put Your Name Here
Name-Email: your-email-address@your-domain.com
Expire-Date:0
EOF
