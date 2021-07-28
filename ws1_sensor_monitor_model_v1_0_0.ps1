##################################################################
#
# Name: Sensor for Dell Monitor Model primary display (need Dell Command Monitor on the Client)
# Author: Sven Riebe
#
# Status: validate
#
# Version 1.0.0
#
# Date: 07-06-2021

$monitor_model = Get-CimInstance -Namespace root\dcim\sysman -ClassName DCIM_DesktopMonitor -Filter "Caption='Root/MainSystemChassis/DisplayAdapterObj/DisplayObj:0'" | Select -ExpandProperty Description
write-output $monitor_model
