base:
  '*':
    - base.users
    - base.groups
    - base.packages
    - base.networks

  'roles:webserver':
    - match: grain
    - roles.webserver

  'roles:mysqlserver':
    - match: grain
    - roles.mysqlserver

  'roles:vm':
    - match: grain
    - vm.packages