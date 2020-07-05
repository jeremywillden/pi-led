myapache2:
  pkg:
    - name: apache2
    - installed
    - version: '>=2.4.38'

htaccess file:
  file.managed:
    - user: www-data
    - group: www-data
    - mode: '0755'
    - name: /var/www/html/.htaccess
    - source: salt://web/htaccess

web server files:
  file.recurse:
    - user: www-data
    - group: www-data
    - file_mode: '0755'
    - dir_mode: '0755'
    - name: /var/www/html
    - source: salt://web/files

