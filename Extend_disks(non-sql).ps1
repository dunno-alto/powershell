Initialize-Disk -Number 1 -PartitionStyle MBR
Initialize-Disk -Number 2 -PartitionStyle MBR

New-Partition -DiskNumber 1 -UseMaximumSize -IsActive -DriveLetter P
New-Partition -DiskNumber 2 -UseMaximumSize -IsActive -DriveLetter S

Format-Volume -DriveLetter P -FileSystem NTFS -NewFileSystemLabel APP
Format-Volume -DriveLetter S -FileSystem NTFS -NewFileSystemLabel DATA
logoff

Initialize-Disk -Number 1 -PartitionStyle MBR
New-Partition -DiskNumber 1 -UseMaximumSize -IsActive -DriveLetter W
Format-Volume -DriveLetter W -FileSystem NTFS -NewFileSystemLabel WITNESS



Initialize-Disk -Number 1 -PartitionStyle MBR
New-Partition -DiskNumber 1 -UseMaximumSize -IsActive -DriveLetter S
Format-Volume -DriveLetter S -FileSystem NTFS -NewFileSystemLabel DATA
