vpns:
  pkg.installed:
    - name: openvpn

remotehelp:
  pkg.installed:
    - pkgs:
      - screen
      - tmux

compression:
  pkg.installed:
    - pkgs:
      - zip
      - p7zip

wirelesstools:
  pkg.installed:
    - name: wavemon

monitoring:
  pkg.installed:
    - name: htop

serial-interfacing:
  pkg.installed:
    - name: ser2net