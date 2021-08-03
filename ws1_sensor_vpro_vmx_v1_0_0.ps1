##################################################################
#
# Name: Sensor Dell check VMX status in BIOS (need Dell Command Monitor on the device)
#
# Author: Sven Riebe
#
# Status: validate
#
# Version 1.0.0
#
# Date: 07-06-2021

$vpro_vmx = Switch(Get-CimInstance -Namespace root\dcim\sysman -ClassName DCIM_VProSettings | Select -ExpandProperty VMXState)
{
    2 {"Enabled"}
    3 {"Disabled"}
    }
write-output $vpro_vmx
