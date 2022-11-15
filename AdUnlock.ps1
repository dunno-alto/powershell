Function Banner_Warning {
cls
Write-Host "                                                                   " -backgroundcolor Blue -foregroundcolor White
Write-Host "                      AD Account unlock tool                       " -backgroundcolor Blue -foregroundcolor White
Write-Host "                         CTRL-C to abort                           " -backgroundcolor Blue -foregroundcolor White
Write-Host "                                                                   " -backgroundcolor Blue -foregroundcolor White
Pause
Main_Menu
}

Function Main_Menu {
	$DefaultVariables = $(Get-Variable).Name
	$choices1 = [Management.Automation.Host.ChoiceDescription[]] ( `
		(new-Object Management.Automation.Host.ChoiceDescription "&1 - Check Status","Status"),
		(new-Object Management.Automation.Host.ChoiceDescription "&2 - Unlock-ADAccount","Unlock"),
		(new-Object Management.Automation.Host.ChoiceDescription "&3 - Disable-ADAccount","Disable"),
		(new-Object Management.Automation.Host.ChoiceDescription "&3 - Enable-ADAccount","Enable"),
		(new-Object Management.Automation.Host.ChoiceDescription "&Exit to Powercli","&Exit Out of Here"));
			$answer1 = $host.ui.PromptForChoice("AD-User-Tools", "Which action would you like to perform?", $choices1, 4)
			if ($answer1 -eq 0) {
					Status_Check
						} elseif ($answer1 -eq 1) {
							Unlock_ADAccount
								} elseif ($answer1 -eq 2) {
								Disable_ADAccount
									} elseif ($answer1 -eq 3) {
										Enable_ADAccount
										} elseif ($answer1 -eq 4) {								
											Write-Host "Peace out bitches!"
													} 
}
Function Status_Check {
	$userName = Read-Host -Prompt 'Input AD username'
		Get-ADUser $userName -Properties LockedOut, Enabled | Select-Object LockedOut, Enabled | format-table -Autosize
			Write-Host "Status Check Results." -backgroundcolor Cyan -foregroundcolor Black
	
pause
Main_Menu
}
Function Unlock_ADAccount {
	$userName = Read-Host -Prompt 'Input locked username'
		Unlock-ADAccount -Identity $userName
			Write-Host "Results." -backgroundcolor Cyan -foregroundcolor Black
				Get-ADUser $userName -Properties LockedOut, Enabled | Select-Object LockedOut, Enabled | format-table -Autosize
pause
Main_Menu
}
Function Disable_ADAccount {
	$userName = Read-Host -Prompt 'Input disabled username'
		Disable-ADAccount -Identity $userName
		Write-Host "Results:" -backgroundcolor Cyan -foregroundcolor Black
			Get-ADUser $userName -Properties LockedOut, Enabled | Select-Object LockedOut, Enabled | format-table -Autosize
pause
Main_Menu
}
Function Enable_ADAccount {
	$userName = Read-Host -Prompt 'Input locked username'
		Enable-ADAccount -Identity $userName
			Write-Host "Results." -backgroundcolor Cyan -foregroundcolor Black
				Get-ADUser $userName -Properties LockedOut, Enabled | Select-Object LockedOut, Enabled | format-table -Autosize
pause
Main_Menu
}			

Banner_Warning