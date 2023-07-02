## PS O365 - View Available Licenses

### Basic CMDLET:
```
Get-MSOLAccountSKU
```

### View Remaining Units CMDLET:
```
Get-MSOLAccountSKU | FT AccountSkuID,ActiveUnits,WarningUnits,ConsumedUnits,
@{L="Remaining";E={$_.ActiveUnits-$_.WarningUnits-$_.ConsumedUnits}}
```


### PS O365 - View Available Services 

#### (View Available Services & Status of Services)

#### CMDLET:
```
Get-MSOLAccountSKU | Select -ExpandProperty ServiceStatus
```

### See List of Services in Active Service Plans:
```
(Get-MSOLAccountSKU | Where {$_.AccountSkuID -eq 'ACCT-SKU-ID'}).ServiceStatus
```

### List of Service Plan Services w/ Details:

```(Get-MSOLAccountSku | Where {$_.AccountSkuID -eq 'ACCT-SKU-ID'}).ServiceStatus.ServicePlan | Sort ServiceName | FT ServiceName,ServiceType,ServicePlanID,TargetClass
```

***Note - Find the Active "AccountSkuID"s (aka ACCT-SKU-ID above) by running Get-MSOLAccountSKU

***Note - Above CMDLET REQUIRES QUOTES
