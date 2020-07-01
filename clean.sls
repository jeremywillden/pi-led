turnAllLedsYellowHere:
  cmd.run:
    - name: pi-led 0 64 64 0 64 64 0 64 64 0 64 64

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

turnAllLedsOffHere:
  cmd.run:
    - name: pi-led 0
