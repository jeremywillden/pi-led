# normally we would have named the minions with dev, staging, production
# but in this case we'll use nodegroups to do the same thing so the
# minion names can remain as they are for now

# using nodegroups for easy targeting:
#  dev:
#  staging:
#  production:
#  web:
#  db:
#  dev-web:
#  dev-db:
#  staging-web:
#  staging-db:
#  production-web:
#  production-db:

base:
  '*':
    - colors.allpurple
    - our-base-packages
    - colors.alloff
    - timezones
    - makefolders
    - users
  'dev':
    - match: nodegroup
    - colors.oneyellow
    - dev.editors
    - dev.debug
  'staging':
    - match: nodegroup
    - colors.twopurple
    - production.firewall
    - production.logging
    - colors.alloff
  'production':
    - match: nodegroup
    - colors.twogreen
    - production.firewall
    - production.logging
    - colors.alloff
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
