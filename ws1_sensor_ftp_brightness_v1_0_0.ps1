##################################################################
#
# Name: Sensor Dell Notebook Flat panel brightness (need Dell Command Monitor on the device)
#
# Author: Sven Riebe
#
# Status: validate
#
# Version 1.0.0
#
# Date: 07-06-2021

$monitor_brightness = Get-CimInstance -Namespace root\dcim\sysman -ClassName DCIM_FlatPanel | Select -ExpandProperty Brightness
write-output $monitor_brightness
