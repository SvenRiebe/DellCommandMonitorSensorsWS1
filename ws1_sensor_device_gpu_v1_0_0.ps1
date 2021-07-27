##################################################################
#
# Name: Sensor for GPU type in device
# Author: Sven Riebe
#
# Status: validate
#
# Version 1.0.0
#
# Date: 07-06-2021

$gpu_name = Get-WmiObject -class win32_VideoController | Select -ExpandProperty Caption
write-output $gpu_name
