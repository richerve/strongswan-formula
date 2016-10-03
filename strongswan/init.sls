{% from "strongswan/map.jinja" import strongswan with context %}

strongswan:
  pkg.installed:
    - pkgs: {{ strongswan.pkgs }}
  service.running:
    - name: {{ strongswan.service }}
    - enable: True
    - require:
      - pkg: strongswan
