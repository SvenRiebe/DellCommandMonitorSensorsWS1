##################################################################
#
# Name: Sensor for HDD Model
# Author: Sven Riebe
#
# Status: validate
#
# Version 1.0.0
#
# Date: 07-06-2021

$hdd_model = Get-WmiObject -class win32_DiskDrive -Filter "Partitions='3'" | Select -ExpandProperty model
write-output $hdd_model
