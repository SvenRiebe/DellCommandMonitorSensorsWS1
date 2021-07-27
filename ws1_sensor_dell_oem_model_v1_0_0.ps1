  
##################################################################
#
# Name: Sensor Dell Notebook Model Name (need Dell Command Monitor on the device)
#
# Author: Sven Riebe
#
# Status: validate
#
# Version 1.0.0
#
# Date: 07-06-2021

$oem_model = Get-CimInstance -Namespace root\dcim\sysman -ClassName dcim_Chassis -Filter "Name='Main System Chassis'" | select -ExpandProperty Model
Write-Output $oem_model
