## List User Group Membership - In Console Output:
```
forEach ($group in (Get-MSOLGroup -all)){
if (Get-MSOLGroupMember -All -GroupObjectID $Group.ObjectID | Where {$_.EmailAddress -eq 'USER.NAME@DOMAIN.com'}) {$Group.DisplayName}}
```


## List User Groups & Export to Text File - Better Live Example:
```
$Groups = forEach ($group in (Get-MSOLGroup -all)){
if (Get-MSOLGroupMember -All -GroupObjectID $Group.ObjectID | Where {$_.EmailAddress -eq 'USER.NAME@DOMAIN.com'}) {$Group | Sort DisplayName | FT DisplayName,Emailaddress,GroupType}}
```
```
$Groups | Out-File -FilePath C:\_IT-Temp\USERNAME-Groups.txt
```