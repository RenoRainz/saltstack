mysqlserver:
  pkg.installed:
    - name: {{ pillar['pkgs']['mysqlserver'] }}