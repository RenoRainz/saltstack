lsscsi:
  pkg.installed

sudo:
  pkg.installed

htop:
  pkg.installed

nmon:
  pkg.installed

sysstat:
  pkg.installed

iptables:
  pkg.installed

lvm2:
  pkg.installed

vim:
  pkg.installed:
    - name: {{ pillar['pkgs']['vim'] }}

source-file:
  file.managed:
    - name: {{ pillar['source']['source-name'] }}
    - source: {{ pillar['source']['source-file'] }}
    - user: root
    - group: root
    - mode: 644

/etc/sudoers:
  file.managed:
    - user: root
    - group: root
    - mode: 440
    - source: salt://sudo/sudoers
    - require:
      - pkg: sudo

ntp:
  pkg.installed: []
  service.running:
    - name: {{ pillar['service']['ntp'] }}
    - require:
      - pkg: ntp

/etc/ntp.conf:
  file.managed:
    - user: root
    - group: root
    - mode: 440
    - source: salt://ntp/ntp.conf
    - require:
      - pkg: ntp
