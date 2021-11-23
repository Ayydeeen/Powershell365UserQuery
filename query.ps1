Get-AzureADUser -All $true -Filter "userType eq 'Member' and accountEnabled eq true" | select displayname, userprincipalname | sort displayname | export-csv .\365Users.csv
