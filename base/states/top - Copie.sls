base:
  '*':
    - base.users
    - base.groups
    - base.packages
    - base.networks
    - machines.{{ grains['host']}}

  'roles:webserver':
    - match: grain
    - roles.webserver

  'roles:mysqlserver':
    - match: grain
    - roles.mysqlserver

  'roles:vm':
    - match: grain
    - vm.packages

  'apps: mywebapp'
    - match: grain
    - apps.mywebapp
