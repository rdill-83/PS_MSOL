## PS O365 - Device Logon Recently

#### MSOL Device Recently Logged In
```
Get-MSOLDevice -All | Sort ApproximateLastLogonTimeStamp -Descending | FT DisplayName,Enabled,ApproximateLastLogonTimeStamp,DeviceOSType,DeviceTrustType,RegisteredOwners | Select -First 25
```