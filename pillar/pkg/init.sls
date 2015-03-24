pkgs:
  {% if grains['os_family'] == 'RedHat' %}
  apache: httpd
  vim: vim-enhanced
  ntp: ntp
  {% elif grains['os_family'] == 'Debian' %}
  apache: apache2
  vim: vim
  ntp: ntp
  {% elif grains['os'] == 'Arch' %}
  apache: apache
  vim: vim
  ntp: ntp
  {% endif %}

  {% if grains['virtual'] == 'VirtualBox' %}
  vmtools: virtualbox-guest-utils
  {% elif grains['virtual'] == 'VMware' %}
  vmtools: open-vm-tools
  {% endif %}