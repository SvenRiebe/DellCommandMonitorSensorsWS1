##################################################################
#
# Name: Sensor for HDD serial no
# Author: Sven Riebe
#
# Status: validate
#
# Version 1.0.0
#
# Date: 07-06-2021

$hdd_serialnumber = Get-CimInstance -Namespace root\dcim\sysman -ClassName DCIM_SMARTAttributeInfo -Filter "AttributeName='vendor-specific'" | Select -ExpandProperty SerialNumber
write-output $hdd_serialnumber
