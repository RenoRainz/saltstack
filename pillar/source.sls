source:
  {% if grains['oscodename'] == 'trusty' %}
  source-file: salt://repo/trusty.list
  source-name: /etc/apt/sources.list
  {% elif grains['oscodename'] == 'Final' %}
  source-file: salt://repo/final.list
  source-name: /etc/yum.repos.d/CentOS-Base.repo
  {% endif %}