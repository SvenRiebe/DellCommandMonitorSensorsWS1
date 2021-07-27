##################################################################
#
# Name: Sensor Dell check if in BIOS the system pw is set (need Dell Command Monitor on the device)
#
# Author: Sven Riebe
#
# Status: validate
#
# Version 1.0.0
#
# Date: 07-06-2021

$bios_systempwd = Get-CimInstance -Namespace root\dcim\sysman -ClassName DCIM_BIOSPassword -filter "AttributeName='SystemPwd'"| Select -ExpandProperty IsSet
write-output $bios_systempwd
