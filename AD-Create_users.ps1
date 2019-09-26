Import-Module ActiveDirectory

$USERS = Import-CSV C:\...

$USERS | ForEach-Object { New-ADUser -Path '...' -sAMAccountName $_.samaccountname -Name $_.cn -UserPrincipalName $_.samaccountname -OfficePhone $_.TelephoneNumber -StreetAddress $_.StreetAddress -City $_.City -Title $_.Title -displayname $_.cn -givenName $_.givenName -Surname $_.sn -emailaddress $_.mail -department $_.department -company $_.company -postalCode $_.postalCode -state $_.st -country $_.co -HomePage $_.site -Office $_.Organization -EmployeeNumber $_.employeeNumber }
