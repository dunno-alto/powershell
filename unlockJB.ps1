	$userName = ADMCOJA
		Unlock-ADAccount -Identity $userName
			Write-Host "Results." -backgroundcolor Cyan -foregroundcolor Black
				Get-ADUser $userName -Properties LockedOut, Enabled | Select-Object LockedOut, Enabled | format-table -Autosize