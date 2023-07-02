## PS O365 - Create User Account

### Create Single User (Blank Example):

```
New-MSOLUser -DisplayName "TEST USER" -FirstName TEST -LastName USER -UserPrincipalName TEST@DOMAIN.COM -UsageLocation US -LicenseAssignment <ACCOUNTSKU:ID>
```

### Create Single User w/ Manually Input Password:
```
New-MSOLUser -DisplayName "TEST USER" -FirstName TEST -LastName USER -UserPrincipalName TEST@DOMAIN.COM -UsageLocation US -LicenseAssignment <ACCOUNTSKU:ID> -Password <TYPE PW HERE>
```