/etc/hosts:
  file.managed:
    - user: root
    - group: root
    - mode: 444
    - source: salt://hosts/hosts