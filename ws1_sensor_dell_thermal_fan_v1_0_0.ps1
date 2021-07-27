##################################################################
#
# Name: Sensor Dell Notebook Fan Health Status (need Dell Command Monitor on the device)
#
# Author: Sven Riebe
#
# Status: validate
#
# Version 1.0.0
#
# Date: 07-06-2021

$thermal_fan = switch(Get-CimInstance -Namespace root\dcim\sysman -ClassName DCIM_ThermalInformation -Filter "AttributeName='Fan Failure Mode'" | Select -ExpandProperty CurrentValue)
{ 0 {"Catastrophic Fan Failure"}
  1 {"Minimal Fan Failure"} 
  2 {"No Failure"}
   }
write-output $thermal_fan
