##################################################################
#
# Name: Sensor Dell BIOS ReleaseDate (need Dell Command Monitor on the device)
#
# Author: Sven Riebe
#
# Status: validate
#
# Version 1.0.0
#
# Date: 07-06-2021

$bios_releasedate = Get-CimInstance -Namespace root\dcim\sysman -ClassName DCIM_BIOSElement | Select -ExpandProperty ReleaseDate
write-output $bios_releasedate
