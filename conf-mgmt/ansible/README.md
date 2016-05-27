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

- os_server:
       state: present
#       auth:
#         auth_url: https://region-b.geo-1.identity.hpcloudsvc.com:35357/v2.0/
#         username: admin
#         password: admin
#         project_name: admin
       name: vm1
       image: "CloudVPS Ubuntu 14.04"
       key_name: demo_pubkey
       timeout: 200
       flavor: 111
       nics:
         - net-id: 34605f38-e52a-25d2-b6ec-754a13ffb723
         - net-name: net-public
       meta:
         hostname: vm1
         group: testserver

