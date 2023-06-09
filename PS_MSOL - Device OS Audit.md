## MSOL Device Auditing Samples:

### Win10 Other than 21H2 + Exclude Win11 + Has Logged In w/in 90 Days to Out-GridView:
 ```
 Get-MSOLDevice -All | Where {$_.DeviceOSType -like '*windows*' -and $_.DeviceOSVersion -notlike '10.0.19044.*' -and $_.DeviceOSVersion -notlike '10.0.2*' -And $_.ApproximateLastLogonTimeStamp -lt (Get-Date).AddDays(-90)} | Sort DeviceOSVersion | Select DisplayName,DeviceOSType,DeviceOSVersion,DeviceTrustType,ApproximateLastLogonTimeStamp | out-GridView -Title 'MSOL Devices Auditing'
  ```


### Win10 Other than 21H2 + Exclude Win11 + Has Logged In w/in 45 Days to CSV:
 ```
Get-MSOLDevice -All | Where {$_.DeviceOSType -like '*windows*' -and $_.DeviceOSVersion -notlike '10.0.19044.*' -and $_.DeviceOSVersion -notLike '10.0.2*' -and $_.ApproximateLastLogonTimeStamp -lt (Get-Date).AddDays(-45)} | Sort DeviceOSVersion | Select DisplayName,DeviceOSType,DeviceOSVersion,DeviceTrustType,ApproximateLastLogonTimeStamp | Export-CSV -LiteralPath C:\_IT-Temp\ABL_Win10-AntiquatedVer_MSOL_$(Get-Date -F MM-dd-yyyy).csv -NoTypeInformation
 ```

#### Note - Most Properties exact same as AzureAD Version + some properties available
