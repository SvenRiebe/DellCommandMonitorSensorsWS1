##################################################################
#
# Name: Sensor for health state of first attached display (need Dell Command Monitor on the Client)
# Author: Sven Riebe
#
# Status: validate
#
# Version 1.0.0
#
# Date: 07-06-2021

$monitor_healthstate = Switch (Get-CimInstance -Namespace root\dcim\sysman -ClassName DCIM_DesktopMonitor -Filter "Caption='Root/MainSystemChassis/DisplayAdapterObj/DisplayObj:0'" | Select -ExpandProperty HealthState)
{
    0 {"Unknown"}
    5 {"OK"}
    10 {"Degraded/Warning"}
    15 {"Minor failure"}
    20 {"Major failure"}
    25 {"Critical failure"}
    30 {"Non-recoverable error"}
    }
write-output $monitor_healthstate
