# Generator - Apache Module.

***apmodule*** is shell tool for generating Apache Module.

Developed in bash code: ***100%***.

The README is used to introduce the tool and provide instructions on
how to install the tool, any machine dependencies it may have and any
other information that should be provided before the tool is installed.

[![GitHub issues open](https://img.shields.io/github/issues/vroncevic/apmodule.svg)](https://github.com/vroncevic/apmodule/issues)
 [![GitHub contributors](https://img.shields.io/github/contributors/vroncevic/apmodule.svg)](https://github.com/vroncevic/apmodule/graphs/contributors)

<!-- START doctoc -->
**Table of Contents**

- [Installation](https://github.com/vroncevic/apmodule#installation)
- [Usage](https://github.com/vroncevic/apmodule#usage)
- [Dependencies](https://github.com/vroncevic/apmodule#dependencies)
- [Shell tool structure](https://github.com/vroncevic/apmodule#shell-tool-structure)
- [Docs](https://github.com/vroncevic/apmodule#docs)
- [Copyright and Licence](https://github.com/vroncevic/apmodule#copyright-and-licence)
<!-- END doctoc -->

### INSTALLATION

Navigate to release [page](https://github.com/vroncevic/apmodule/releases) download and extract release archive.

To install modules type the following:

```
tar xvzf apmodule-x.y.z.tar.gz
cd apmodule-x.y.z
cp -R ~/sh_tool/bin/   /root/scripts/apmodule/ver.1.0/
cp -R ~/sh_tool/conf/  /root/scripts/apmodule/ver.1.0/
cp -R ~/sh_tool/log/   /root/scripts/apmodule/ver.1.0/
```

![alt tag](https://raw.githubusercontent.com/vroncevic/apmodule/dev/docs/setup_tree.png)

Or You can use docker to create image/container.

### USAGE

```
# Create symlink for shell tool
ln -s /root/scripts/apmodule/ver.1.0/bin/apmodule.sh /root/bin/apmodule

# Setting PATH
export PATH=${PATH}:/root/bin/

# Generate Apache Module rcp
apmodule rcp
```

### DEPENDENCIES

This tool requires these other modules and libraries:

* sh_util https://github.com/vroncevic/sh_util

### SHELL TOOL STRUCTURE

***apmodule*** is based on MOP.

Shell tool structure:
```
.
├── bin/
│   └── apmodule.sh
├── conf/
│   ├── apmodule.cfg
│   └── apmodule_util.cfg
└── log/
    └── apmodule.log
```

### DOCS

[![Documentation Status](https://readthedocs.org/projects/apmodule/badge/?version=latest)](https://apmodule.readthedocs.io/projects/apmodule/en/latest/?badge=latest)

More documentation and info at:

* https://apmodule.readthedocs.io/en/latest/

### COPYRIGHT AND LICENCE

[![License: GPL v3](https://img.shields.io/badge/License-GPLv3-blue.svg)](https://www.gnu.org/licenses/gpl-3.0) [![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://opensource.org/licenses/Apache-2.0)


Copyright (C) 2018 by https://vroncevic.github.io/apmodule

This tool is free software; you can redistribute it and/or modify
it under the same terms as Bash itself, either Bash version 4.2.47 or,
at your option, any later version of Bash 4 you may have available.

