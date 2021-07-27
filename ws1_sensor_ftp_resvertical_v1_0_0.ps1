##################################################################
#
# Name: Sensor Dell Notebook Flat panel vertical resolution setting actual (need Dell Command Monitor on the device)
#
# Author: Sven Riebe
#
# Status: validate
#
# Version 1.0.0
#
# Date: 07-06-2021


$monitor_resvertical = Get-CimInstance -Namespace root\dcim\sysman -ClassName DCIM_FlatPanel | Select -ExpandProperty VerticalResolution
write-output $monitor_resvertical
