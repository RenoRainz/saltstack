eth0:
  network.managed:
    - enabled: True
    - type: eth
    - proto: none
    - ipaddr: 10.0.2.15
    - netmask: 255.255.255.0
    - gateway: 10.0.2.2
    - gatewaydev: eth0
    - dns:
      - 10.0.2.3
eth2:
  network.managed:
    - enabled: True
    - type: eth
    - proto: none
    - ipaddr: 10.0.0.12
    - netmask: 255.255.255.0