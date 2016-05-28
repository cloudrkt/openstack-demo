# Openstack inventory for Openstack

Get Ansible for your workstation: pip install ansible
Then get the Ansible openstack inventory script:

```
wget https://raw.githubusercontent.com/ansible/ansible/devel/contrib/inventory/openstack.py
```

You'll need some extra packages like shade so:

```
pip install shade
```

Lets test it out! Lets boot a new openstack instance with ansible.

```
ansible-playbook create-instance.yml -i inventory -e "name=myserver" 
```

```yaml
- hosts: 127.0.0.1
  connection: local
  gather_facts: no
  tasks:


  - os_server:
         state: present
         name: myserver
         image: "CloudVPS Ubuntu 14.04"
         key_name: demo_pubkey
         timeout: 200
         flavor: 111
         network: net-public
         meta:
           hostname: myserver
           group: testserver
```