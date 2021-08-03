##################################################################
#
# Name: Sensor Dell check SMX status in BIOS (need Dell Command Monitor on the device)
#
# Author: Sven Riebe
#
# Status: validate
#
# Version 1.0.0
#
# Date: 07-06-2021

$vpro_smx = Switch(Get-CimInstance -Namespace root\dcim\sysman -ClassName DCIM_VProSettings | Select -ExpandProperty SMXState)
{
    2 {"Enabled"}
    3 {"Disabled"}
    }
write-output $vpro_smx
