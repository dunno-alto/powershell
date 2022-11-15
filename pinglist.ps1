$_pingList = Get-Content -Path "C:\ScriptsPS\List\tropsubs.txt" -Encoding Unicode
		ping "$_pingList" 
			