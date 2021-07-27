##################################################################
#
# Name: Sensor for Win10 Licensekey stored in BIOS
# Author: Sven Riebe
#
# Status: validate
#
# Version 1.0.0
#
# Date: 07-06-2021

$oem_licencekey = (Get-WmiObject -query 'select * from SoftwareLicensingService‘).OA3xOriginalProductKey
Write-Output $oem_licencekey
