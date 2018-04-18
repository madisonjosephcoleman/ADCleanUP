
####This moves a non server  to the correct OU ###
Get-ADComputer -Filter { OperatingSystem -Notlike "*Server*" } -SearchBase "CN=*SourceOU*,DC=*DOMAIN*,DC=local" | ForEach-Object { Move-ADobject -Identity $_ -TargetPath "OU=**DestinationOU*,DC=**DOMAIN**,DC=local" }







