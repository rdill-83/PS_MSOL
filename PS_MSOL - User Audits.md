### Licensed Users Created w/in Last 90 Days:
```
Get-MSOLUser -All | Where {$_.isLicensed -eq $True -and $_.WhenCreated -gt (Get-Date).AddDays(-90)} | Sort WhenCreated -Descending | FT UserPrincipalName,DisplayName,WhenCreated,isLicensed,Licenses
```

### Unlicensed User Audit:
```
Get-MSOLUSer -UnlicensedUsersOnly | Where {$_.UserPrincipalName -notlike '*sync*'} | Sort DisplayName | Select UserPrincipalName,DisplayName,BlockCredential,isLicensed,LastPasswordChangeTimeStamp | FT
```

### PS O365 - User PW Change Audit
```
Get-MsolUser -All | Where {$_.isLicensed -eq $True -And $_.LastPasswordChangeTimeStamp -lt (Get-Date).AddMonths(-#)} | Sort LastPasswordChangeTimeStamp | Select DisplayName,isLicensed,Licenses,LastPasswordChangeTimeStamp | Out-Gridview
```

### List Blocked users w/ Pertinent Info:
```
Get-MSOLUser -All | Where {$_.BlockCredential -eq $True} | Where {$_.DisplayName -notlike '*directory*'} | Sort WhenCreated -Descending | FT DisplayName,UserPrincipalName,BlockCredential,isLicensed,WhenCreated
```