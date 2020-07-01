# using nodegroups for easy targeting:
#  dev-web:      
#  dev-db:
#  staging-web:
#  staging-db:
#  production-web:
#  production-db:

base:
  '*':
    - our-base-packages
  '*-web':
    - match: nodegroup
    - webserver
  '*-db':
    - match: nodegroup
    - databaseserver
  'dev-*':
    - match: nodegroup
    - devtools
  'N@staging-* or N@production-*'
    - match: compound
    - productionlogging
