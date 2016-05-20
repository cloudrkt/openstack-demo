# Openstack demo usecases

In  this repository you will find several usecases for openstack.

Clone this directory in your favorite folder to get started.

## Prerequisites

You will need an Openstack account to test these usescases, so please create one
at your favorite hosting company. When completed, you can fill in the .tenantrc file
in the folder like this:

```
 touch ~/.tenantrc && editor ~/.tenantrc
```

Fill in the details to setup your environment. These variables are used by various
openstack tools.

```
export OS_AUTH_URL=
export OS_PROJECT_NAME=
export OS_USERNAME=
export OS_PASSWORD=
export OS_TENANT_NAME=
```

Active these enviroment variables by executing:

```
 source ~/.tenantrc
```

This tutorial expects some software to be installed per usecase so please check
out the readme files in the usecase directory's.
