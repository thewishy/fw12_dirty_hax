# fw12_dirty_hax
Dirty hacks for the problems with the tablet mode setup for the early FW12 laptops

There seem to be problems with the hall effect sensor, hardware, firmware or linux kenerl, with some early Framework 12 laptops. https://community.frame.work/t/what-are-the-linux-system-requirements-for-tablet-mode/71466/30

This repo has a few scripts which can help workaround the problem right now
- screen-flip.sh - for kUbuntu 25.04, this will flip the screen rotation
- fw-laptop-mode.sh - use framework_tool to force laptop mode
- fw-tablet-mode.sh - use framework_tool to force tablet mode
- framework/framework_tool - Insert framework_tool build here
- framework/dirty_hax - file permissions to allow any user to run framework_tool as root without sudo. This is a horrible idea from a security point of view, but it's a single user laptop, and entering a sudo password is somewhat of a pain when stuck in tablet mode

Pop shortcuts on your desktop, tap to change the config

WARNING: If left in tablet mode, you will boot up in tablet mode (keybaord disabled). For linux desktops, you can probably login using the virtual keyboard. If you use full disk encryption, you'll need to use an external keyboard or so some safe recovery stuff, as described here: https://community.frame.work/t/bricked-my-framework-laptop-12-after-2-hours-after-receiving/71463
