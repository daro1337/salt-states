/etc/salt/master:
  file.managed:
  - source: salt://salt-master/files/master
  - create: True
  - template: jinja
  - user: salt
  - group: salt
  - mode: 640

salt-master:
  service.running:
    - onchanges:
      - file: /etc/salt/master
