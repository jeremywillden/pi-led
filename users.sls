{% for oneuser in pillar['user-list'] %}
{{ oneuser.name }}:
  user.present:
    - password: {{ oneuser.pass }}
    - home: /home/{{ oneuser.name }}

user photo for {{ oneuser.name }}:
  file.managed:
    - name: /home/{{ oneuser.name }}/me.jpg
    - contents: {{ salt['pillar.get']('oneuser.picture', 'default_picture') }}
{% endfor %}
