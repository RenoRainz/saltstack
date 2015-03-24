/etc/sudoers:
  file.managed:
    - user: root
    - group: root
    - mode: 440
    - source: salt://files/sudo/sudoers
    - require:
      - pkg: sudo