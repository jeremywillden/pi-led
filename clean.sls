turnAllLedsWhiteHere:
  cmd.run:
    - name: pi-led 64 64 64 64 64 64 64 64 64 64 64 64

removeall:
  pkg.removed:
    - pkgs:
      - apache2
      - mongodb
      - redis
      - vim
      - ngrep
      - nmap
      - tcpdump
      - openvpn
      - screen
      - tmux
      - p7zip
      - wavemon
      - ser2net
      - ufw
  file.absent:
    - name: /var/www

turnAllLedsOffHere:
  cmd.run:
    - name: pi-led 0
