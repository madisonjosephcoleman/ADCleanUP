### This will move servers form the Computer OU into Domain Servers OU ####
Get-ADComputer -Filter { OperatingSystem -Like "*Server*" } -SearchBase "CN=*SourceOU*,DC=*Domain*,DC=local" | ForEach-Object { Move-ADobject -Identity $_ -TargetPath "OU=*DestinationOU*,DC=*Domain*,DC=local" }
