andrewrothstein.nexus-repo
=========
[![Build Status](https://travis-ci.org/andrewrothstein/ansible-nexus-repo.svg?branch=master)](https://travis-ci.org/andrewrothstein/ansible-nexus-repo)

Installs [Nexus Repository](https://www.sonatype.com/nexus-repository-oss).

Requirements
------------

See [meta/main.yml](meta/main.yml)

Role Variables
--------------

See [defaults/main.yml](defaults/main.yml)

Dependencies
------------

See [meta/main.yml](meta/main.yml)

Example Playbook
----------------

```yml
- hosts: servers
  roles:
    - andrewrothstein.nexus-repo
```

License
-------

MIT

Author Information
------------------

Andrew Rothstein <andrew.rothstein@gmail.com>
