8.3.1

Install-WindowsFeature ad-domain-services -IncludeManagementTools
Install-WindowsFeature dns -IncludeAllSubFeature -IncludeManagementTools
Import-Module ADDSDeployment


# First DC
Install-ADDSForest -CreateDnsDelegation:$false -DatabasePath "C:\Windows\NTDS" -DomainMode "Win2012R2" -DomainName "domain.local" -DomainNetbiosName "dc-02" -ForestMode "Win2012R2" -InstallDns:$true -LogPath "C:\Windows\NTDS" -NoRebootOnCompletion:$false -SysvolPath "C:\Windows\SYSVOL" -Force:$true

# Additional DC  
Install-ADDSDomainController  -DomainName "domain.local" -InstallDNS:$True -credential (Get-Credential)
