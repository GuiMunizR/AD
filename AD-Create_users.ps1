Import-Module ActiveDirectory

$USERS = Import-CSV C:\Users\gustavo.infoshot\Desktop\New_folder\Cria_users_working\New_users_sadabio.csv

$USERS | ForEach-Object { New-ADUser -Path 'OU=O365,OU=SADABIO,OU=FILIAIS,OU=SADATRANS.LOCAL,DC=sadatrans,DC=local' -sAMAccountName $_.samaccountname -Name $_.cn -UserPrincipalName $_.samaccountname -OfficePhone $_.TelephoneNumber -StreetAddress $_.StreetAddress -City $_.City -Title $_.Title -displayname $_.cn -givenName $_.givenName -Surname $_.sn -emailaddress $_.mail -department $_.department -company $_.company -postalCode $_.postalCode -state $_.st -country $_.co -HomePage $_.site -Office $_.Organization -EmployeeNumber $_.employeeNumber }


OU=O365,OU=SADABIO,OU=FILIAIS,OU=SADATRANS.LOCAL,DC=sadatrans,DC=local