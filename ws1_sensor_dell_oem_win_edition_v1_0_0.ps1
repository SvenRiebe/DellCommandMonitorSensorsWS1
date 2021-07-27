##################################################################
#
# Name: Sensor Win10 OEM Version who is bought with the device
# Author: Sven Riebe
#
# Status: validate
#
# Version 1.0.0
#
# Date: 07-06-2021

$oem_win_edition = Get-CimInstance -namespace root\cimv2 -classname SoftwareLicensingService | Select-Object -ExpandProperty OA3xOriginalProductKeyDescription
Write-Output $oem_win_edition
