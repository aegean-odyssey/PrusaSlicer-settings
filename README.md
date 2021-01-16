# PrusaSlicer settings

[`Monoprice README`](Monoprice/README.md) &nbsp;
[`Ultimaker README`](Ultimaker/README.md) &nbsp;

>UPDATE: With the release of `PrusaSlicer-2.3.0`, PrusaSlicer offers better support for "vendor bundles" that are not compiled into and distributed with the application. Once installed, these vendor settings operate in the same fashion as the "official" vendor bundles.

>UPDATE: Currently, PrusaSlicer will not fetch an automatic update from this repository and it appears that it never will. You can find some discussion [here](https://github.com/prusa3d/PrusaSlicer/issues/5196) and [here](https://github.com/prusa3d/PrusaSlicer/pull/4129). As a result, the machinery to provide automatic updates has been removed from the repository.

## Monoprice MP Mini Delta

These printer settings were developed in conjuction with the
[aegean-odyssey/mpmd_marlin_1.1.x](https://github.com/aegean-odyssey/mpmd_marlin_1.1.x)
projectm-- Marlin firmware for the MP Mini Delta printer. This vendor bundle
is a good place to start if you want to use PrusaSlicer with your MP Mini Delta.

## Ultimaker Original

We have a few very old Ultimaker Original printers that we tinker with.
The printer profile here is an early effort to use PrusaSlicer with these
old printers. The settings perform "ok", but could benefit with more work
and attention.

## Installation

* Download the appropriate zip file
  * [`Monoprice-vendor.zip`](https://github.com/aegean-odyssey/PrusaSlicer-settings/raw/master/Monoprice-vendor.zip)
    _for the Monoprice MP Mini Delta_ 
  * [`Ultimaker-vendor.zip`](https://github.com/aegean-odyssey/PrusaSlicer-settings/raw/master/Ultimaker-vendor.zip)
    _for the Ultimaker Original_

* Unzip the file and place the contents in the _vendor_ folder of PrusaSlicer's configuration directory
  * `C:Users\_your_username_here_\AppData\Roaming\PrusaSlicer\vendor` _for Windows_
  * `/Users/_your_username_here_/Library/Application Support/PrusaSlicer/vendor` _for Mac_
  * `~/.config/PrusaSlicer/vendor` _for Linux_

* Use PrusaSlicer's Configuration Wizard to select the vendor and printer
