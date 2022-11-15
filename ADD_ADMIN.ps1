#Add to admins
$DomainGroup = "HQ-HQLIT SDS_I&AS"
$LocalGroup  = "Administrators"
$Computer    = $env:computername
$Domain      = $env:userdomain
([ADSI]"WinNT://$Computer/$LocalGroup,group").psbase.Invoke("Add",([ADSI]"WinNT://$Domain/$DomainGroup").path)
logoff
HARRAHS\ERM Admins
Add-LocalGroupMember -Group "Administrators" -Member "isle\ESDSDSADMIN"
Add-LocalGroupMember -Group "Administrators" -Member "harrahs\cramasubramanian"
Add-LocalGroupMember -Group "Administrators" -Member "HARRAHS\ERM Admins"
Add-LocalGroupMember -Group "Administrators" -Member "harrahs\HQ-HQLIT SDS_I&AS"
Add-LocalGroupMember -Group "Administrators" -Member "sdsprod\esd server admins"
Add-LocalGroupMember -Group "Administrators" -Member "isle\slmo-ouadmins"
Add-LocalGroupMember -Group "Administrators" -Member "HARRAHS\svcESDSDS13RPTS"
Add-LocalGroupMember -Group "Users allowed logon as Batch Job" -Member "harrahs\"

logoff


#Remove from admins
$DomainGroup = "ADMACMG"
$LocalGroup  = "Administrators"
$Computer    = $env:computername
$Domain      = $env:userdomain
([ADSI]"WinNT://$Computer/$LocalGroup,group").psbase.Invoke("Remove",([ADSI]"WinNT://$Domain/$DomainGroup").path)


$DomainGroup = "HQ-HQLIT SDS_I&AS"
$LocalGroup  = "Administrators"
$Computer    = $env:computername
$Domain      = "harrahs.org"
([ADSI]"WinNT://$Computer/$LocalGroup,group").psbase.Invoke("Add",([ADSI]"WinNT://$Domain/$DomainGroup").path)
logoff
