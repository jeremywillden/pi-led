Full listing of the nodegroups used in the course demo in /etc/salt/master

nodegroups:
  # machines at the left edge of each rack, usually they run coolest
  leftedge: 'L@pi-cluster-01,pi-cluster-09,pi-cluster-17'
  # right edge of each rack, pretty cool but not quite as much air flow
  rightedge: 'E@pi-cluster-(08|16|24)'
  # middle machines in each rack, probably run the hottest
  middletwo:
    - pi-cluster-04
    - pi-cluster-05
    - pi-cluster-12
    - pi-cluster-13
    - pi-cluster-20
    - pi-cluster-21
  # prime numbered slots, purely for testing
  primea: 'G@primeslot:true and E@pi-cluster-0[1-8]'
  # the prime numbered slots in the left-hand side of Rack A only
  halfprime: 'N@primea and E@pi-cluster-0[1-4]'
  dev-web:
    - pi-cluster-01 # dev-web
  dev-db:
    - pi-cluster-02 # dev-db
  staging-web:
    - pi-cluster-03 # staging-web
  staging-db:
    - pi-cluster-04 # staging-db
  production-web:
    - pi-cluster-05 # production-web
    - pi-cluster-06 # production-web
    - pi-cluster-09 # production-web
    - pi-cluster-11 # production-web
    - pi-cluster-13 # production-web
    - pi-cluster-15 # production-web
    - pi-cluster-17 # production-web
    - pi-cluster-19 # production-web
    - pi-cluster-21 # production-web
    - pi-cluster-23 # production-web
  production-db:
    - pi-cluster-07 # production-db
    - pi-cluster-08 # production-db
    - pi-cluster-10 # production-db
    - pi-cluster-12 # production-db
    - pi-cluster-14 # production-db
    - pi-cluster-16 # production-db
    - pi-cluster-18 # production-db
    - pi-cluster-20 # production-db
    - pi-cluster-22 # production-db
    - pi-cluster-24 # production-db
  db:
    - pi-cluster-02 # dev-db
    - pi-cluster-04 # staging-db
    - pi-cluster-07 # production-db
    - pi-cluster-08 # production-db
    - pi-cluster-10 # production-db
    - pi-cluster-12 # production-db
    - pi-cluster-14 # production-db
    - pi-cluster-16 # production-db
    - pi-cluster-18 # production-db
    - pi-cluster-20 # production-db
    - pi-cluster-22 # production-db
    - pi-cluster-24 # production-db
  web:
    - pi-cluster-01 # dev-web
    - pi-cluster-03 # staging-web
    - pi-cluster-05 # production-web
    - pi-cluster-06 # production-web
    - pi-cluster-09 # production-web
    - pi-cluster-11 # production-web
    - pi-cluster-13 # production-web
    - pi-cluster-15 # production-web
    - pi-cluster-17 # production-web
    - pi-cluster-19 # production-web
    - pi-cluster-21 # production-web
    - pi-cluster-23 # production-web
  dev:
    - pi-cluster-01 # dev-web
    - pi-cluster-02 # dev-db
  staging:
    - pi-cluster-03 # staging-web
    - pi-cluster-04 # staging-db
  production:
    - pi-cluster-05 # production-web
    - pi-cluster-06 # production-web
    - pi-cluster-09 # production-web
    - pi-cluster-11 # production-web
    - pi-cluster-13 # production-web
    - pi-cluster-15 # production-web
    - pi-cluster-17 # production-web
    - pi-cluster-19 # production-web
    - pi-cluster-21 # production-web
    - pi-cluster-23 # production-web
    - pi-cluster-07 # production-db
    - pi-cluster-08 # production-db
    - pi-cluster-10 # production-db
    - pi-cluster-12 # production-db
    - pi-cluster-14 # production-db
    - pi-cluster-16 # production-db
    - pi-cluster-18 # production-db
    - pi-cluster-20 # production-db
    - pi-cluster-22 # production-db
    - pi-cluster-24 # production-db
