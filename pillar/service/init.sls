service:
  {% if grains['os_family'] == 'RedHat' %}
  ntp: ntpd
  {% elif grains['os_family'] == 'Debian' %}
  ntp: ntp
  {% elif grains['os'] == 'Arch' %}
  ntp: ntp
  {% endif %}