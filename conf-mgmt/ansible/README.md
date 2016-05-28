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
