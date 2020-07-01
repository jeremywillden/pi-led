setAllLedsYellow:
  cmd.run:
    - name: pi-led 0 64 64 0 64 64 0 64 64 0 64 64

mydatabases:
  pkg.installed:
    - pkgs:
      - mongodb
      - redis

setAllLedsBlue:
  cmd.run:
    - name: pi-led 64 0 0 64 0 0 64 0 0 64 0 0
