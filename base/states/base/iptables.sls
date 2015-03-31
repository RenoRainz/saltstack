sshd:
  iptables.append:
    - table: filter
    - chain: INPUT
    - jump: ACCEPT
    - match: state
    - connstate: NEW
    - dport: 22
    - proto: tcp
    - in-interface: eth1
    - save: False

salt-master:
  iptables.append:
    - table: filter
    - chain: INPUT
    - jump: ACCEPT
    - match: state
    - connstate: NEW
    - source: 172.16.0.100
    - proto: tcp
    - in-interface: eth1
    - save: False

default-input:
  iptables.set_policy:
    - table: filter
    - chain: FORWARD
    - policy: DROP


