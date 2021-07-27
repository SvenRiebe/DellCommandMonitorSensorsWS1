##################################################################
#
# Name: Sensor Win10 language setting on device
# Author: Sven Riebe
#
# Status: validate
#
# Version 1.0.0
#
# Date: 07-06-2021

$os_languages = (Get-WinUserLanguageList)[0].LocalizedName
Write-Output $os_languages
