## PrusaSlicer settings - Monoprice (Mini Delta)

# CHANGELOG

## Release 0.0.8

* Change printer id from MiniDelta to MPMD
* Change PET to PETG to match Prusa's filament work
* Change filament vendor from null to "Generic"
* Add bed_model entry

## Release 0.0.7

* Rework/revert start gcode for mpmd_marlin_1.1.x firmware. The
  change in the previous release does not work well with the
  firmware that limits the peak power consumption (for use with
  the printer's stock 60-watt power adapter) -- often causing a
  "thermal runaway" fault in the printer. Heating or pre-heating
  the nozzle before heating the bed mostly avoids this situation.

## Release 0.0.6

* Rework start gcode for mpmd_marlin_1.1.x firmware (119r02+)
  Heat and wait for bed temperature before heating the hot end.

* Bump overall speeds for SIMPLE settings.

## Release 0.0.5

* Rework start gcode for mpmd_marlin_1.1.x firmware (119r02+)

## Release 0.0.4

* Start gcode adjusted for MPMD4Marlin firmware (v1.3.3)

## Release 0.0.3

* Ok settings for Monoprice Mini Delta (OEM firmware)
