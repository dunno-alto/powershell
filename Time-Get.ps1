$RNODlist = "C:\ScriptsPS\List\RNOD-Servers.txt"
$VMS = Get-Content "$RNODlist"

foreach ($vm in $VMS) {
net time \\$vm
	}
	