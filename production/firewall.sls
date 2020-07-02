myfirewalls:
  pkg.installed:
    - pkgs:
      - ufw
#      - iptables

# we would also add configuration files for whichever firewall we are using
