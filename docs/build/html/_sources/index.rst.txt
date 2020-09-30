Apmodule
---------

**apmodule** is shell tool for generating `Apache Module <https://httpd.apache.org/docs/2.4/mod/>`_.

Developed in `bash <https://en.wikipedia.org/wiki/Bash_(Unix_shell)>`_ code: **100%**.

|GitHub shell checker|

.. |GitHub shell checker| image:: https://github.com/vroncevic/apmodule/workflows/apmodule%20shell%20checker/badge.svg

The README is used to introduce the tool and provide instructions on
how to install the tool, any machine dependencies it may have and any
other information that should be provided before the tool is installed.

|GitHub issues| |Documentation Status| |GitHub contributors|

.. |GitHub issues| image:: https://img.shields.io/github/issues/vroncevic/apmodule.svg
   :target: https://github.com/vroncevic/apmodule/issues

.. |GitHub contributors| image:: https://img.shields.io/github/contributors/vroncevic/apmodule.svg
   :target: https://github.com/vroncevic/apmodule/graphs/contributors

.. |Documentation Status| image:: https://readthedocs.org/projects/apmodule/badge/?version=latest
   :target: https://apmodule.readthedocs.io/projects/apmodule/en/latest/?badge=latest

.. toctree::
    :hidden:

    self

Installation
-------------

Navigate to release `page`_ download and extract release archive.

.. _page: https://github.com/vroncevic/apmodule/releases

To install **apmodule** type the following:

.. code-block:: bash

   tar xvzf apmodule-x.y.z.tar.gz
   cd apmodule-x.y.z
   cp -R ~/sh_tool/bin/   /root/scripts/apmodule/ver.1.0/
   cp -R ~/sh_tool/conf/  /root/scripts/apmodule/ver.1.0/
   cp -R ~/sh_tool/log/   /root/scripts/apmodule/ver.1.0/

Or You can use Docker to create image/container.

|GitHub docker checker|

.. |GitHub docker checker| image:: https://github.com/vroncevic/apmodule/workflows/apmodule%20docker%20checker/badge.svg

Dependencies
-------------

**apmodule** requires next modules and libraries:
    sh_util `https://github.com/vroncevic/sh_util <https://github.com/vroncevic/sh_util>`_

Usage
------

.. code-block:: bash

    # Create symlink for apmodule
    ln -s /root/scripts/apmodule/ver.1.0/bin/apmodule.sh /root/bin/apmodule
    # Setting PATH
    export PATH=${PATH}:/root/bin/
    # Generate Apache Module rcp
    apmodule rcp

Shell tool structure
---------------------

**apmodule** is based on MOP.

Code structure:

.. code-block:: bash

   .
   ├── bin/
   │   └── apmodule.sh
   ├── conf/
   │   ├── apmodule.cfg
   │   └── apmodule_util.cfg
   └── log/
       └── apmodule.log

Copyright and licence
----------------------

|License: GPL v3| |License: Apache 2.0|

.. |License: GPL v3| image:: https://img.shields.io/badge/License-GPLv3-blue.svg
   :target: https://www.gnu.org/licenses/gpl-3.0

.. |License: Apache 2.0| image:: https://img.shields.io/badge/License-Apache%202.0-blue.svg
   :target: https://opensource.org/licenses/Apache-2.0

Copyright (C) 2017 by `vroncevic.github.io/apmodule <https://vroncevic.github.io/apmodule>`_

**apmodule** is free software; you can redistribute it and/or modify it
under the same terms as Bash itself, either Bash version 4.2.47 or,
at your option, any later version of Bash 4 you may have available.

