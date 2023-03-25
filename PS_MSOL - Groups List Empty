# List Empty / Inactive Groups in Office365

# MSOL / AAD Security Groups (w/ CSV Export):
Get-MSOLGroup -GroupType Security | Where {(Get-MSOLGroupMember -GroupObjectId $_.ObjectID).Count -eq 0} | Export-CSV -LiteralPath "C:\_IT-Temp\ABL-GCC_AAD-Groups-Security_Empty_$(Get-Date -f yyyy-MM-dd).csv" -NoTypeInformation

# MSOL / AAD Distribution Groups:
Get-MSOLGroup -GroupType Distribution | Where {(Get-MSOLGroupMember -GroupObjectId $_.ObjectID).Count -eq 0}

# MSOL / AAD MailEnabledSecurity Groups:
Get-MSOLGroup -GroupType MailEnabledSecurity | Where {(Get-MSOLGroupMember -GroupObjectId $_.ObjectID).Count -eq 0}


# MSOL / AAD Groups w/ Memberships:
Get-MSOLGroup -All | Where {(Get-MSOLGroupMember -GroupObjectId $_.ObjectID).Count -ne 0} | Sort DisplayName
