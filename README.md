Docker docker-lsyncd
============
Docker image with alpine distribution and packages:
* lsyncd
* openssh-client

Quick Start
===========

Create your lsyncd.conf.lua. See examples configuration available here: https://axkibe.github.io/lsyncd/manual/examples/

* Launch container
```bash
docker run -d -v $(pwd)/lsyncd.conf.lua:/etc/lsyncd/lsyncd.conf.lua --name lsyncd mnival/docker-lsyncd
```

Interfaces
===========

Ports
-------

Volumes
-------

Maintainer
==========
Please submit all issues/suggestions/bugs via
https://github.com/mnival/docker-lsyncd
