##################################################################
#
# Name: Sensor Dell Notebook Flat panel horizontal resolution setting actual (need Dell Command Monitor on the device)
#
# Author: Sven Riebe
#
# Status: validate
#
# Version 1.0.0
#
# Date: 07-06-2021

$monitor_reshorizontal = Get-CimInstance -Namespace root\dcim\sysman -ClassName DCIM_FlatPanel | Select -ExpandProperty HorizontalResolution
write-output $monitor_reshorizontal
