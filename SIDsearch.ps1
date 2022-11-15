$objSID = New-Object System.Security.Principal.SecurityIdentifier ("S-1-5-21-3978775775-502896606-3955627348-87548")
$objUser = $objSID.Translate( [System.Security.Principal.NTAccount])
$objUser.Value

$objSID = New-Object System.Security.Principal.SecurityIdentifier ("S-1-5-21-2289157769-2105898975-1522228613-3184")
$objUser = $objSID.Translate( [System.Security.Principal.NTAccount])
$objUser.Value
