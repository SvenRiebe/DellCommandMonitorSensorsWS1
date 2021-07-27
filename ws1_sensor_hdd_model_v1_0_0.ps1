##################################################################
#
# Name: Sensor for HDD Model ID
# Author: Sven Riebe
#
# Status: validate
#
# Version 1.0.0
#
# Date: 07-06-2021

$hdd_modelnumber = Get-CimInstance -Namespace root\dcim\sysman -ClassName DCIM_SMARTAttributeInfo -Filter "AttributeName='vendor-specific'" | Select -ExpandProperty ModelNumber
write-output $hdd_modelnumber
