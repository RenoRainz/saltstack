mywebapp:
  user.present:
    - fullname: Application user of mywebapp
    - shell: /bin/bash
    - home: /app/mywebapp
    - uid: 3100
    - gid: users

/app/mywebapp/bin:
  file.directory:
    - user: mywebapp
    - group: mywebapp
    - mode: 755
    - makedirs: True
    - recurse:
      - user
      - group
      - mode

