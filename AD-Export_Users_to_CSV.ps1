Import-Module ActiveDirectory
Get-ADUser -Filter * -Properties * | export-csv C:\Users\gustavo.infoshot\Desktop\Export_AD_Users_to_CSV.v1.0\ADusers.csv