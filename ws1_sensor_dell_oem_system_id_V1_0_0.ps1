##################################################################
#
# Name: Sensor for Device ID
# Author: Sven Riebe
#
# Status: validate
#
# Version 1.0.0
#
# Date: 07-06-2021

$system_id = Get-CimInstance -ClassName Win32_ComputerSystem | select -ExpandProperty SystemSKUNumber
Write-Output $system_id
