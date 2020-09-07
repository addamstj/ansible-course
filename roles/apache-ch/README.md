Ansible Role: Apache
====================

An ansible role for installing Apache and ModPerl on EL6.

Requirements
------------

This role requires epel repo to be set up prior to run.  This can easily be accomplished by using a role like [geerlingguy.repo-epel](https://galaxy.ansible.com/geerlingguy/repo-epel/) or another equivalent.

Role Variables
--------------

Variable        |Default  | Description
----------------|:-------:|-------------
apache_version  |`2.2.15` |The Apache version to install
install_modperl |`true`   |Install ModPerl as well?
modperl_version |`2.0.4`  |The ModPerl version to install
apache_user     |`apache` |Create an apache user that can be configured for use in your httpd.conf

Dependencies
------------

None.

Example Requirements File
-------------------------
```
- src: https://github.com/companieshouse/ansible-role-apache
  name: apache
```
Example Playbook
----------------
```
    - hosts: servers
      roles:
         - role: apache
           apache_version: 2.2.15
           modperl_version: 2.0.4
```

License
-------

MIT
