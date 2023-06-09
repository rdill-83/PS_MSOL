## PS O365 - Find Users w No Location Set


#### *Note - Some Office 365 Services aren't available in certain countries & therefore all Office 365 Accts require a " UsageLocation "

### Base CMDLET:
```
Get-MSOLUser -All | Where {$_.UsageLocation -eq $null}
```
#### Sorted:
```
Get-MSOLUser -All | Where {$_.UsageLocation -eq $null} | Sort DisplayName
```
#### Sorted & Thorough:
```
Get-MSOLUser -All | Where {$_.UsageLocation -eq $null} | Sort DisplayName | FT DisplayName,UserPrincipalName,isLicensed,UsageLocation
```


### Licensed Users w/ No Location
```
Get-MSOLUser -All | Where {$_.isLicensed -eq $True} | Where {$_.UsageLocation -eq $null}
```

### Validate "No Location Users" Aren't Licensed
```
Get-MSOLUser -All | Where {$_.UsageLocation -eq $null} | FT UserPrincipalName,isLicensed,Licenses,WhenCreated
```

### Set User Location - Basic:
```
Set-MSOLUser -UserPrincipalName USERNAME@DOMAIN.COM -UsageLocation "US"
```