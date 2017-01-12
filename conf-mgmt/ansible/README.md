# Openstack inventory for Openstack

Get Ansible for your workstation or server and install ansible: http://docs.ansible.com/ansible/intro_installation.html
Then get the Ansible Openstack inventory script to connect your inventory to openstack API:

```
wget https://raw.githubusercontent.com/ansible/ansible/devel/contrib/inventory/openstack.py
```

You'll need some extra packages like shade: https://pypi.python.org/pypi/shade/1.9.0

With pip:

```
pip install shade
```

Lets test it out! Lets boot a new openstack instance with ansible.
First create an inventory file and add:

[localhost]
127.0.0.1

Next, boot an openstack server. Don't forget to setup your environment variables. For more information
about environment variables check out: http://docs.ansible.com/ansible/os_server_module.html as example.

```
ansible-playbook create-instance.yml -i inventory -e "name=myserver" 
```

