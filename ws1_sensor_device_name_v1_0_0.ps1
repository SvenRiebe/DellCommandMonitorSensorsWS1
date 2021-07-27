##################################################################
#
# Name: Sensor for Device Name
# Author: Sven Riebe
#
# Status: validate
#
# Version 1.0.0
#
# Date: 07-06-2021

$device_name = Get-CimInstance Win32_Computersystem | select -ExpandProperty Name
write-output $device_name
