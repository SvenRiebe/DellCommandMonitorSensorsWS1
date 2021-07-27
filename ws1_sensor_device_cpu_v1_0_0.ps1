##################################################################
#
# Name: Sensor check cpu type in device
# Author: Sven Riebe
#
# Status: validate
#
# Version 1.0.0
#
# Date: 07-06-2021

$cpu_name = Get-WmiObject -class win32_processor | Select -ExpandProperty Name
write-output $cpu_name
