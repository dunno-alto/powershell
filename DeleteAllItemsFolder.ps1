$killlist = "C:\ScriptsPS\List\TestCdrivefull.txt"
	$VICTIMS = Get-Content "$killlist"	
	foreach($victim in $VICTIMS){
	Write-Host "Cleaning $victim" -forgroundcolor Yellow -Backgroundcolor -Blue
		Remove-Item -path "C:\Windows\temp"-recurse -force
		Remove-Item -path "C:\Windows\LiveKernalReports"-recurse -force
		Remove-Item -path "C:\Windows\Logs"-recurse -force
		Remove-Item -path "C:\Program Files\rempl"-recurse -force
		Remove-Item -path "C:\inetpub\logs\LogFiles"-recurse -force
}