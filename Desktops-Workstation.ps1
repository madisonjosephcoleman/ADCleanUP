
####This moves desktops to the correct OU workstations###
Get-ADComputer -Filter { OperatingSystem -Notlike "*Server*" } -SearchBase "CN=*SourceOU*,DC=*DOMAIN*,DC=local" | ForEach-Object { Move-ADobject -Identity $_ -TargetPath "OU=**DestinationOU*,DC=**DOMAIN**,DC=local" }







