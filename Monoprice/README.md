#### [PrusaSlicer settings](https://github.com/aegean-odyssey/PrusaSlicer-settings)

### Monoprice (MP Mini Delta)

### CHANGES

## 0.1.0

* Restructure and label in keeping Prusa's conventions for
  its settings profiles
* Configure bed model, texture, and thumbnail files to integrate
  with PrusaSlicer 2.3.0
* Add Generic filament profiles for PLA, PETG, and TPU
* Overhaul print profiles 

## 0.0.9

* Change some names and labels to be more consistent
* Adjust retraction settings for Marlin's "Linear Advance"

## 0.0.8

* Change printer id from MiniDelta to MPMD
* Change PET to PETG to match Prusa's filament work
* Change filament vendor from null to "Generic"
* Add bed_model entry

## 0.0.7

* Rework/revert start gcode for mpmd_marlin_1.1.x firmware. The
  change in the previous release does not work well with the
  firmware that limits the peak power consumption (for use with
  the printer's stock 60-watt power adapter) -- often causing a
  "thermal runaway" fault in the printer. Heating or pre-heating
  the nozzle before heating the bed mostly avoids this situation.

## 0.0.6

* Rework start gcode for mpmd_marlin_1.1.x firmware (119r02+)
  Heat and wait for bed temperature before heating the hot end.

* Bump overall speeds for SIMPLE settings.

## 0.0.5

* Rework start gcode for mpmd_marlin_1.1.x firmware (119r02+)

## 0.0.4

* Start gcode adjusted for MPMD4Marlin firmware (v1.3.3)

## 0.0.3

* Ok settings for Monoprice Mini Delta (OEM firmware)
