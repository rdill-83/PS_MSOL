# MSOL User License - Export to CSV


#Create Variables

$CSVPath = "C:\Path\To\File_$(Get-Date -f MM-dd-yyyy).csv"

#Script Starts Here:

$EntLicUsers =  Get-MSOLUser -All | Where {$_.isLicensed -eq $True}
	
foreach($LicUser in $EntLicUsers){
	$Licenses = $LicUser.Licenses
	$LicArray = $Licenses | ForEach-Object {$_.AccountSKUID}
	$LicString = $LicArray -join ", "
	$LicProperties = [pscustomobject][ordered]@{
		UserName	= $LicUser.UserPrincipalName
		DisplayName	= $LicUser.DisplayName
		Title		= $LicUser.Title
		Department	= $LicUser.Department
		Licenses	= $LicString
		Created		= $LicUser.WhenCreated
		Blocked		= $LicUser.BlockCredential
	}
	$LicProperties | Export-CSV -Path $CSVPath -Append -NoTypeInformation
}
