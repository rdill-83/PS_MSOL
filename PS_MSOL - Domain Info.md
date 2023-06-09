## PS O365 - Domains Registered

*Assuming Already Logged Into O365

### View Registered Domains
```
Get-MSOLDomain
```

### View All Registered Domain Info:
```
Get-MSOLDomain | FL *
```

### View Specified Domain Essential Info:
```
Get-MSOLDomain -DomainName Celsinc.com
```

### View All Verified Domains
```
Get-MSOLDomain -Status Verified
```

### All Verified Domains - Pertinent Info:
```
Get-MSOLDomain | Sort Name | FT Name,Authentication,Capabilities,isDefault,isInitial,Status
```

### View MSOL Domain Password Policy
#### Syntax Example:
```
Get-MSOLPasswordPolicy -DomainName Domain.COM
```