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

{% set folder_list = ['folder1', 'folder2', 'folder3', 'folder4', 'folder5'] %}
{% for foldername in folder_list %}
delete {{ foldername }}:
  file.absent:
    - name: /root/{{ foldername }}
{% endfor %}

{% for oneuser in pillar['user-list'] %}
{{ oneuser.name }}:
  user.absent

user photo for {{ oneuser.name }}:
  file.absent:
    - name: /home/{{ oneuser.name }}
{% endfor %}

America/Denver:
  timezone.system:
    - utc: True

turnAllLedsOffHere:
  cmd.run:
    - name: pi-led 0
