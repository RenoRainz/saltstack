base:
  '*':
    - base.users
    - base.groups
    - base.packages
    - base.networks

  'roles:webserver':
    - match: grain
    - webserver.packages

  'roles:vm':
    - match: grain
    - vm.packages