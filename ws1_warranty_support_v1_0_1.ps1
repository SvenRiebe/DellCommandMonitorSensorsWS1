##################################################################
#
# Name: Sensor Dell warrenty level information (need Dell Command Monitor on the device)
#
# Author: Sven Riebe
#
# Status: validate
#
# Version 1.0.0
#
# Date: 07-06-2021

$supportname = Get-CimInstance -Namespace root\dcim\sysman -ClassName DCIM_AssetWarrantyInformation | Select -ExpandProperty Name

if ($supportname -match "ProSupport*")
{

$select = Get-CimInstance -Namespace root\dcim\sysman -ClassName DCIM_AssetWarrantyInformation -Filter "Name = 'ProSupport Plus for PCs and Tablets'" | Select -ExpandProperty Name
$warranty_support = $select[0] 

}
Else
{
$warranty_support = "Basic Support" 
}
write-output $warranty_support
