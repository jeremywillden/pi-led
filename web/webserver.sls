# The shorthand (but less manageable) way:
"pi-led 0 0 0 0 64 64":
  cmd.run

apache2:
  pkg:
    - installed
    - version: '>=2.4.38'

"pi-led 0 0 0 0 0 64":
  cmd.run


# The better way:
#setSingleLedYellow:
#  cmd.run:
#    - name: pi-led 0 0 0 0 64 64

#myapache2:
#  pkg:
#    - name: apache2
#    - installed
#    - version: '>=2.4.38'

#setSingleLedGreen:
#  cmd.run:
#    - name: pi-led 0 0 0 0 0 64


