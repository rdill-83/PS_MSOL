# MSOL User - MFA Status View & Set 


### View User MFA Status:
```
Get-MSOLUser -UserPrincipalname USER@DOMAIN.com | FT userPrincipalName,StrongAuthenticationRequirements
```

### Enable User MFA:
```
$mf_enable= New-Object -TypeName Microsoft.Online.Administration.StrongAuthenticationRequirement
$mf_enable.RelyingParty = "*"
$mfa_enable = @($mf_enable)
Set-MsolUser -UserPrincipalName USER@DOMAIN.com -StrongAuthenticationRequirements $mfa_enable
```

### Disable User MFA:
```
Get-MSOLUser -UserPrincipalname USER@DOMAIN.com | Set-MsolUser -StrongAuthenticationRequirements @()
```



# Source:
[The IT Bros - AzureAD Enable / Disable MFA](https://theitbros.com/enable-disable-mfa-in-azure-active-directory/)
