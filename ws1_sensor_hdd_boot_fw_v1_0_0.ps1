##################################################################
#
# Name: Sensor for HDD firmware ID
# Author: Sven Riebe
#
# Status: validate
#
# Version 1.0.0
#
# Date: 07-06-2021

$hdd_fw = Get-WmiObject -class win32_DiskDrive -Filter "Partitions='3'" | Select -ExpandProperty FirmwareRevision
write-output $hdd_fw
