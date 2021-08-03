##################################################################
#
# Name: Sensor Dell warrenty end date information (need Dell Command Monitor on the device)
#
# Author: Sven Riebe
#
# Status: validate
#
# Version 1.0.0
#
# Date: 07-06-2021

$warranty_end = Get-CimInstance -Namespace root\dcim\sysman -ClassName DCIM_AssetWarrantyInformation -f| Select -ExpandProperty WarrantyEndDate
write-output $warranty_end[0]
