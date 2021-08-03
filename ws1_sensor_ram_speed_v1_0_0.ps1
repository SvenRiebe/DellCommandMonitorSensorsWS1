##################################################################
#
# Name: Sensor Dell check speed of RAM Modules (need Dell Command Monitor on the device)
#
# Author: Sven Riebe
#
# Status: validate
#
# Version 1.0.0
#
# Date: 07-06-2021

$ram_speed = Get-CimInstance -Namespace root\dcim\sysman -ClassName DCIM_PhysicalMemory | Select -ExpandProperty Speed
write-output $ram_speed[0]
