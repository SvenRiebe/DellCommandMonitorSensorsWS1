##################################################################
#
# Name: Sensor Device Serialnumber/ServiceTag
#
# Author: Sven Riebe
#
# Status: validate
#
# Version 1.0.0
#
# Date: 07-06-2021

$servicetag = Get-WmiObject -class win32_bios | Select -ExpandProperty SerialNumber
write-output $servicetag
