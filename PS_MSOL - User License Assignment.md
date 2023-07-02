## PS O365 - Assign User License

#### (Use Get-MSOLAccountSKU to retrieve the "AccountSkuID")

### Assign User O365 Lic CMDLET:
```
Set-MsolUserLicense -UserPrincipalName "USERNAME@DOMAIN" -AddLicenses "<AccountSkuId>"
```

## Assign User O365 Lic w/ Exchange Service Lics Disabled:

#### Set License Option Variable:
```
$LO = New-MSOLLicenseOptions -AccountSkuID "<AccountSkuId>" -DisabledPlans "EXCHANGE_S_STANDARD",'MICROSOFTBookings','O365_SB_Relationship_Management'
```
#### Apply License w/ Modifications:
```
Set-MSOLUserLicense -UserPrincipalName User@Domain.com -AddLicenses "<AccountSkuId>" -LicenseOptions $LO
```

### Assign Licenses to All Unlicensed Users:
```
$AllUn = Get-MsolUser -All -UnlicensedUsersOnly; $AllUn | foreach {Set-MsolUserLicense -AddLicenses "<AccountSkuId>"}
```


#### *Note - If PS "Bleeds Red" due to No Location 
```
Set-MSOLUser -USerPrincipalName USERNAME@DOMAIN.COM -UsageLocation "US"
```