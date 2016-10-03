{% from 'strongswan/map.jinja' import strongswan with context %}

include:
  - strongswan

strongswan_ipsec_conf:
  file.managed:
    - name: /etc/ipsec.conf
    - source: salt://strongswan/files/ipsec.conf.jinja
    - template: jinja
    - context:
        config: {{ strongswan.config }}
        connections: {{ strongswan.connections }}
    - watch_in:
      - service: strongswan
    - require:
      - pkg: strongswan

strongswan_ipsec_secrets:
  file.managed:
    - name: /etc/ipsec.secrets
    - source: salt://strongswan/files/ipsec.secrets.jinja
    - template: jinja
    - context:
        key_type: {{ strongswan.key_type }}
        key_file: {{ strongswan.key_file }}
    - watch_in:
      - service: strongswan
    - require:
      - pkg: strongswan
