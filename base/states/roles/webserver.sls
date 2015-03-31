apache:
  pkg.installed:
    - name: {{ pillar['pkgs']['apache'] }}

php5-mysql:
  pkg.installed

curl:
  pkg.installed

git:
  pkg.installed

/dev/sdb:
  lvm.pv_present

appvg:
  lvm.vg_present:
    - devices: /dev/sdb

lv_app:
  lvm.lv_present:
    - vgname: appvg
    - size: 128M

/dev/appvg/lv_app:
  blockdev.formatted:
    - fs_type: ext4

/app/:
  mount.mounted:
    - device: /dev/appvg/lv_app
    - fstype: ext4
    - mkmnt: True
    - opts:
      - defaults