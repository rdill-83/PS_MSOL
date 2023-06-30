## Office 365 Device Info

### List All 0365 Devices w/ Full Info:
Get-MSOLDevice -All 

### List All 0365 Devices w/ Pertinent Info:
```Get-MSOLDevice -All | Sort DisplayName | FT DisplayName,Enabled,*OSType,*OSVersion,DeviceTrustLevel,DeviceTrustType,*LastLogon*,RegisterdOwners```

### List 0365 Devices w/Specified Name w/ Pertinent Info:

```Get-MSOLDevice -All | Where {$_.Displayname -like 'Desktop*'} | Sort DisplayName | FT Displayname,*OSType,*OSVersion,DeviceTrustType,DeviceTrustLevel,*LastLogon*```

``Note - Above Script - Pick between DeviceTrustLevel & *LastLogon* - to much data``

### Specified Device Info:

```Get-MSOLDevice -Name MACHINE_NAME```

*ie

```Get-MSOLDevice -Name BM-IAUSTIN ```

### Search for Device:

```Get-MSOLDevice -All | Where {$_.DisplayName -like 'LT*'}```



### List Disabled Devices:

```Get-MSOLDevice -All | Where {$_.Enabled -eq $False}```


### Device Recently Logged In - (Copied to Dedicated Doc):

```Get-MSOLDevice -All | Sort ApproximateLastLogonTimeStamp -Descending | FT DisplayName,Enabled,ApproximateLastLogonTimeStamp,DeviceOSType,DeviceTrustType,RegisteredOwners | Select -First 25```



#### DeviceTrustType property note:
###### workplace Joined = AzureAD Registered Device ( mobile device or device w/ hybrid connection )
###### AzureAD Joined = AzureAD Joined Device 
