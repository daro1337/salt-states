install_common_software:
  pkg.installed:
    - pkgs:
      - nc
      - nmap
      - htop
      - iftop
      - tmux
      - pigz

{% if salt['grains.get']('os_family') == "Debian" %}
remove_software:
  pkg.purged:
    - pkgs:
      - snapd
{% endif %}

    