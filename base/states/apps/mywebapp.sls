mywebapp:
  group.present:
    - gid: 3100
  user.present:
    - fullname: Application user of mywebapp
    - shell: /bin/bash
    - home: /app/mywebapp
    - uid: 3100
    - gid: mywebapp

/app/mywebapp/bin:
  file.recurse:
    - user: mywebapp
    - group: mywebapp
    - dir_mode: 755
    - file_mode: 644
    - makedirs: True
    - clean: True
    - source: salt://mywebapp/bin

