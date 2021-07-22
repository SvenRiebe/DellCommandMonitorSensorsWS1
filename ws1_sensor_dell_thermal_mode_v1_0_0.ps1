##################################################################
#
# Name: Sensor Dell BIOS Thermal Management Profile is set to device (need Dell Command Monitor on the device)
#
# Author: Sven Riebe
#
# Status: validate
#
# Version 1.0.0
#
# Date: 07-21-2021

$thermal_mode = switch(Get-CimInstance -Namespace root\dcim\sysman -ClassName DCIM_ThermalInformation -Filter "AttributeName='Thermal Mode'" | Select -ExpandProperty CurrentValue)
{ 0 {"Optimized"}
  1 {"Cool"} 
  2 {"Quiet"}
  3 {"Performance"}
  }
write-output $thermal_mode
