renaud:
  user.present:
    - fullname: RenoRainz
    - shell: /bin/bash
    - home: /home/renaud
    - uid: 2000
    - gid: users
    - groups:
      - sudo
  ssh_auth.present:
    - user: renaud
    - source: salt://ssh-keys/renaud-rsa.pub

root:
  ssh_auth.present:
    - user: root
    - source: salt://ssh-keys/renaud-rsa.pub