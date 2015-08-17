keepalived.service:
  service.running:
    - name: keepalived
    - enable: True
    - reload: True
    - sig: /usr/sbin/keepalived
    - require:
      - pkg: keepalived
    - watch:
      - file: keepalived.config
