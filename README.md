# ansible_rancher_rke2

## Configuration

- Change `IPs` in `inventories/${PLATFORM}/hosts` for `${DISTRO}-master` and `${DISTRO}-workers}`.
## Install

Run Install command for server and agent:

```
PLATFORM=centos # centos | ubuntu
SSH_USER=centos # centos | ubuntu
ansible-playbook --inventory "inventories/${PLATFORM}/hosts" --user "${SSH_USER}" playbooks/rke2_server_install.yml --extra-vars '{ "hosts": ["centos-masters"] }'
ansible-playbook --inventory "inventories/${PLATFORM}/hosts" --user "${SSH_USER}" playbooks/rke2_server_install.yml --extra-vars '{ "hosts": ["centos-workers"] }'
```

## Uninstall

```
PLATFORM=centos # centos | ubuntu
SSH_USER=centos # centos | ubuntu
ansible-playbook --inventory "inventories/${PLATFORM}/hosts" --user "${SSH_USER}" playbooks/rke2_uinstall.yml --extra-vars '{ "hosts": ["centos-masters"] }'
ansible-playbook --inventory "inventories/${PLATFORM}/hosts" --user "${SSH_USER}" playbooks/rke2_uinstall.yml --extra-vars '{ "hosts": ["centos-workers"] }'
```