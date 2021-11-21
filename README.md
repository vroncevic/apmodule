<img align="right" src="https://raw.githubusercontent.com/vroncevic/apmodule/dev/docs/apmodule_logo.png" width="25%">

# Generator for Template HTTP Apache Module

**apmodule** is shell tool for generating **[Apache Module](https://httpd.apache.org/docs/2.4/mod/)**.

Developed in **[bash](https://en.wikipedia.org/wiki/Bash_(Unix_shell))** code: **100%**.

[![apmodule shell checker](https://github.com/vroncevic/apmodule/workflows/apmodule%20shell%20checker/badge.svg)](https://github.com/vroncevic/apmodule/actions?query=workflow%3A%22apmodule+shell+checker%22)

The README is used to introduce the tool and provide instructions on
how to install the tool, any machine dependencies it may have and any
other information that should be provided before the tool is installed.

[![GitHub issues open](https://img.shields.io/github/issues/vroncevic/apmodule.svg)](https://github.com/vroncevic/apmodule/issues)
 [![GitHub contributors](https://img.shields.io/github/contributors/vroncevic/apmodule.svg)](https://github.com/vroncevic/apmodule/graphs/contributors)

<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->
**Table of Contents**

- [Installation](#installation)
- [Usage](#usage)
- [Dependencies](#dependencies)
- [Shell tool structure](#shell-tool-structure)
- [Docs](#docs)
- [Copyright and licence](#copyright-and-licence)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->

### Installation

![Debian Linux OS](https://raw.githubusercontent.com/vroncevic/apmodule/dev/docs/debtux.png)

Navigate to release **[page](https://github.com/vroncevic/apmodule/releases)** download and extract release archive.

To install **apmodule** type the following
```
tar xvzf apmodule-x.y.tar.gz
cd apmodule-x.y
cp -R ~/sh_tool/bin/   /root/scripts/apmodule/ver.x.y/
cp -R ~/sh_tool/conf/  /root/scripts/apmodule/ver.x.y/
cp -R ~/sh_tool/log/   /root/scripts/apmodule/ver.x.y/
```

Self generated setup script and execution
```
./apmodule_setup.sh 

[setup] installing App/Tool/Script apmodule
	Sat 20 Nov 2021 11:46:10 AM CET
[setup] clean up App/Tool/Script structure
[setup] copy App/Tool/Script structure
[setup] remove github editor configuration files
[setup] set App/Tool/Script permission
[setup] create symbolic link of App/Tool/Script
[setup] done

/root/scripts/apmodule/ver.3.0/
├── bin/
│   ├── apmodule.sh
│   ├── center.sh
│   └── display_logo.sh
├── conf/
│   ├── apmodule.cfg
│   ├── apmodule.logo
│   └── apmodule_util.cfg
└── log/
    └── apmodule.log

3 directories, 7 files
lrwxrwxrwx 1 root root 46 Nov 20 11:46 /root/bin/apmodule -> /root/scripts/apmodule/ver.1.0/bin/apmodule.sh
```

Or You can use docker to create image/container.

[![apmodule docker checker](https://github.com/vroncevic/apmodule/workflows/apmodule%20docker%20checker/badge.svg)](https://github.com/vroncevic/apmodule/actions?query=workflow%3A%22apmodule+docker+checker%22)

### Usage

```
# Create symlink for apmodule
ln -s /root/scripts/apmodule/ver.x.y/bin/apmodule.sh /root/bin/apmodule

# Setting PATH
export PATH=${PATH}:/root/bin/

# Generate Apache Module rcp
apmodule rcp
                                                                                                    
apmodule ver.3.0
Sun 21 Nov 2021 09:41:28 AM CET

[check_root] Check permission for current session? [ok]
[check_root] Done
	                                 _       _      
	  __ _ _ __  _ __ ___   ___   __| |_   _| | ___ 
	 / _` | '_ \| '_ ` _ \ / _ \ / _` | | | | |/ _ \
	| (_| | |_) | | | | | | (_) | (_| | |_| | |  __/
	 \__,_| .__/|_| |_| |_|\___/ \__,_|\__,_|_|\___|
	      |_|                                       
		Info   github.io/apmodule ver.3.0 
		Issue  github.io/issue
		Author vroncevic.github.io

[apmodule] Loading basic and util configuration!
100% [================================================]

[load_conf] Loading App/Tool/Script configuration!
[check_cfg] Checking configuration file [/root/scripts/apmodule/ver.3.0/conf/apmodule.cfg] [ok]
[check_cfg] Done

[load_conf] Done

[load_util_conf] Load module configuration!
[check_cfg] Checking configuration file [/root/scripts/apmodule/ver.3.0/conf/apmodule_util.cfg] [ok]
[check_cfg] Done

[load_util_conf] Done

[check_tool] Checking tool [/usr/bin/apxs]? [ok]
[check_tool] Done

[apmodule] Generating Apache Module
Creating [DIR]  rcp
Creating [FILE] rcp/Makefile
Creating [FILE] rcp/modules.mk
Creating [FILE] rcp/mod_rcp.c
Creating [FILE] rcp/.deps
[apmodule] Set owner!
[apmodule] Set permission!
[apmodule] Done
```

### Dependencies

**apmodule** requires next modules and libraries:
* sh_util [https://github.com/vroncevic/sh_util](https://github.com/vroncevic/sh_util)

### Shell tool structure

**apmodule** is based on MOP.

Shell tool structure
```
sh_tool/
├── bin/
│   ├── apmodule.sh
│   ├── center.sh
│   └── display_logo.sh
├── conf/
│   ├── apmodule.cfg
│   ├── apmodule.logo
│   └── apmodule_util.cfg
└── log/
    └── apmodule.log
```

### Docs

[![Documentation Status](https://readthedocs.org/projects/apmodule/badge/?version=latest)](https://apmodule.readthedocs.io/projects/apmodule/en/latest/?badge=latest)

More documentation and info at:
* [https://apmodule.readthedocs.io/en/latest/](https://apmodule.readthedocs.io/en/latest/)
* [https://www.gnu.org/software/bash/manual/](https://www.gnu.org/software/bash/manual/)
* [https://httpd.apache.org/docs/2.4/developer/modguide.html](https://httpd.apache.org/docs/2.4/developer/modguide.html)

### Copyright and licence

[![License: GPL v3](https://img.shields.io/badge/License-GPLv3-blue.svg)](https://www.gnu.org/licenses/gpl-3.0) [![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://opensource.org/licenses/Apache-2.0)

Copyright (C) 2017 by [vroncevic.github.io/apmodule](https://vroncevic.github.io/apmodule)

**apmodule** is free software; you can redistribute it and/or modify
it under the same terms as Bash itself, either Bash version 4.2.47 or,
at your option, any later version of Bash 4 you may have available.

Lets help and support FSF.

[![Free Software Foundation](https://raw.githubusercontent.com/vroncevic/apmodule/dev/docs/fsf-logo_1.png)](https://my.fsf.org/)

[![Donate](https://www.paypalobjects.com/en_US/i/btn/btn_donateCC_LG.gif)](https://my.fsf.org/donate/)
