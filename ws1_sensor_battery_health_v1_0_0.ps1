##################################################################
#
# Name: Sensor Dell Notebook Battery health (need Dell Command Monitor on the device)
#
# Author: Sven Riebe
#
# Status: validate
#
# Version 1.0.0
#
# Date: 07-06-2021

$battery_healthstate = Switch (Get-CimInstance -Namespace root\dcim\sysman -ClassName DCIM_Battery | Select -ExpandProperty HealthState)
{
    0 {"Unknown"}
    5 {"OK"}
    10 {"Degraded/Warning"}
    15 {"Minor failure"}
    20 {"Major failure"}
    25 {"Critical failure"}
    30 {"Non-recoverable error"}
    }
write-output $battery_healthstate
