turnAllLedsWhiteHere:
  cmd.run:
    - name: pi-led 64 64 64 64 64 64 64 64 64 64 64 64

removeall:
  pkg.removed:
    - pkgs:
      - openvpn
      - screen
      - tmux
      - p7zip
      - wavemon
      - ser2net
      - vim
      - ngrep
      - nmap
      - tcpdump
      - apache2
      - mongodb
      - redis
      - ufw
  file.absent:
    - name: /var/www

turnAllLedsOffHere:
  cmd.run:
    - name: pi-led 0