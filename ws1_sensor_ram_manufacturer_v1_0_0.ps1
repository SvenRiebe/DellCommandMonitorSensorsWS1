##################################################################
#
# Name: Sensor Dell check who is RAM manufacturer (need Dell Command Monitor on the device)
#
# Author: Sven Riebe
#
# Status: validate
#
# Version 1.0.0
#
# Date: 07-06-2021

$ram_manufacturer = Get-CimInstance -Namespace root\dcim\sysman -ClassName DCIM_PhysicalMemory | Select -ExpandProperty Manufacturer
write-output $ram_manufacturer[0]
