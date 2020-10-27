{% if 'Rack A' in grains['location'] %}
Asia/Kolkata:
  timezone.system:
    - utc: True

include:
  - colors.fourgreen

{% elif 'Rack B' in grains['location'] %}
Europe/Paris:
  timezone.system:
    - utc: True

include:
  - colors.fourpurple

{% elif 'Rack C' in grains['location'] %}
America/Los_Angeles:
  timezone.system:
    - utc: True

include:
  - colors.fouryellow

{% else %}
GMT:
  timezone.system:
    - utc: True

include:
  - colors.fourwhite
{% endif %}