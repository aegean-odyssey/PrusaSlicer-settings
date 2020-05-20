# PrusaSlicer settings

[`Monoprice ChangeLog`](live/Monoprice/changelog.md) &nbsp;
[`Ultimaker Changelog`](live/Ultimaker/changelog.md) &nbsp;


> Currently, PrusaSlicer does not really support "vendor bundles" that are not compiled into the PrusaSlicer
> application nor does it allow updates to the vendor settings from URLs that are not the official PrusaResearch
> URL. With `PrusaSlicer-2.2.0`, the installation instructions below mostly work -- missing: printer thumbnail in
> the Configuration Wizard, bed model and texture files, and automatic updates. Hopefully, a future version of
> PrusaSlicer will better support the work here.

> `TIP:` The supplied bed model file can be used. As a work-around, manually edit the .ini file to set the path in
> the "bed-custom-model" setting to point to the bed model file (e.g. `.PrusaSlicer/vendor/Monoprice/MPMD.stl`).
> Note that the path differs depending on the OS platform (Windows, Linux, Mac OSX).

### Monoprice MP Mini Delta

These printer settings were developed in conjuction with the
[aegean-odyssey/mpmd_marlin_1.1.x](https://github.com/aegean-odyssey/mpmd_marlin_1.1.x) project.

###### Installation

* [Download](https://github.com/aegean-odyssey/PrusaSlicer-settings/raw/master/live/Monoprice-vendor.zip) the zip file,
[Monoprice-vendor.zip](https://github.com/aegean-odyssey/PrusaSlicer-settings/raw/master/live/Monoprice-vendor.zip);
* Unzip the file and place the contents in the `vendor` folder of PrusaSlicer's configuration directory;
* Copy the `Monoprice.idx` file and place in the `cache` folder of PrusaSlicer's configuration directory;
* In PrusaSlicer's Preferences, select the item to allow Settings updates from non-PrusaResearch URLs (optional);
* Use PrusaSlicer's Configuration Wizard to select the Monoprice vendor and printer.

### Ultimaker Original

We have a few very old Ultimaker Original printers that we tinker with. The printer profile here is an early effort
to use PrusaSlicer with these old printers. The settings perform "ok", but could benefit with more work and attention.

###### Installation

* [Download](https://github.com/aegean-odyssey/PrusaSlicer-settings/raw/master/live/Ultimaker-vendor.zip) the zip file,
[Ultimaker-vendor.zip](https://github.com/aegean-odyssey/PrusaSlicer-settings/raw/master/live/Ultimaker-vendor.zip);
* Unzip the file and place the contents in the `vendor` folder of PrusaSlicer's configuration directory;
* Copy the `Ultimaker.idx` file and place in the `cache` folder of PrusaSlicer's configuration directory;
* In PrusaSlicer's Preferences, select the item to allow Settings updates from non-PrusaResearch URLs (optional);
* Use PrusaSlicer's Configuration Wizard to select the Ultimaker vendor and printer.

