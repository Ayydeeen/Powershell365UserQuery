#Connect-AzureAD:
Get-AzureADUser -All $true -Filter "userType eq 'Member' and accountEnabled eq true" | select displayname, userprincipalname | sort displayname | export-csv .\365Users.csv

#AD/LDAP Builtin:
Get-ADUser -LDAPFilter '(!userAccountControl:1.2.840.113556.1.4.803:=2)' | export-csv C:\Temp\Enabled.csv
Get-ADUser -LDAPFilter '(!userAccountControl:1.2.840.113556.1.4.803:=1)' | export-csv C:\Temp\Disabled.csv
