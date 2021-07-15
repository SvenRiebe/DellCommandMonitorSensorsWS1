$ram_capacity = get-wmiobject -class win32_computersystem | select -ExpandProperty TotalPhysicalMemory
write-output $ram_capacity
