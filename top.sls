# using nodegroups for easy targeting:
#  dev-web:      
#  dev-db:
#  staging-web:
#  staging-db:
#  production-web:
#  production-db:

base:
#  '*':
#    - our-base-packages
  'dev':
    - match: nodegroup
    - colors.oneyellow
    - dev.editors
    - dev.debug
#  'N@staging or N@production'
#    - match: compound
#    - productionlogging
  'web':
    - match: nodegroup
    - colors.twoyellow
    - web.webserver
    - colors.allgreen
  'db':
    - match: nodegroup
    - colors.threeyellow
    - db.databaseserver
    - colors.allblue
