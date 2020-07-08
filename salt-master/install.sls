install_saltmaster:
  pkg.installed:
    - pkgs:
      - python-pygit2
      - python-pip
      - salt-master
      - salt-cloud
      - salt-minion
       
