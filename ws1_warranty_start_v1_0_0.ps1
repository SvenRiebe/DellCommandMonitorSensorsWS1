##################################################################
#
# Name: Sensor Dell warrenty start date information (need Dell Command Monitor on the device)
#
# Author: Sven Riebe
#
# Status: validate
#
# Version 1.0.0
#
# Date: 07-06-2021

$warranty_start = Get-CimInstance -Namespace root\dcim\sysman -ClassName DCIM_AssetWarrantyInformation | Select -ExpandProperty WarrantyStartDate
write-output $warranty_start[0]
