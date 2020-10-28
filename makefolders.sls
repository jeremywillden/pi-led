{% set folder_list = ['folder1', 'folder2', 'folder3', 'folder4', 'folder5'] %}
{% for foldername in folder_list %}
create {{ foldername }}:
  file.directory:
    - user: root
    - group: root
    - mode: '0744'
    - name: /root/{{ foldername }}
{% endfor %}

