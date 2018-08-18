# ansible-virtualenv

These scripts are handy when ansible is installed in a virtualenv

- run-ansible-command.sh: this script should be placed in the
  virtualenv where Ansible is installed and symlinked to a
  directory that is in your PATH, as many times as Ansible
  commands need to be run, with their name as the symlink's name.
  For example:

```bash
ln -s /path/to/virtualenv /usr/local/bin/ansible
ln -s /path/to/virtualenv /usr/local/bin/ansible-playbook
```
