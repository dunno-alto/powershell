#Copy below and paste to target SQL server

Initialize-Disk -Number 1 -PartitionStyle MBR
Initialize-Disk -Number 2 -PartitionStyle MBR
Initialize-Disk -Number 3 -PartitionStyle MBR
Initialize-Disk -Number 4 -PartitionStyle MBR
Initialize-Disk -Number 5 -PartitionStyle MBR

#For SQL

New-Partition -DiskNumber 1 -UseMaximumSize -IsActive -DriveLetter S
New-Partition -DiskNumber 2 -UseMaximumSize -IsActive -DriveLetter L
New-Partition -DiskNumber 3 -UseMaximumSize -IsActive -DriveLetter T
New-Partition -DiskNumber 4 -UseMaximumSize -IsActive -DriveLetter X
New-Partition -DiskNumber 5 -UseMaximumSize -IsActive -DriveLetter P

Format-Volume -DriveLetter S -FileSystem NTFS -NewFileSystemLabel DATA -AllocationUnitSize 65536 

Format-Volume -DriveLetter L -FileSystem NTFS -NewFileSystemLabel LOGS -AllocationUnitSize 65536 

Format-Volume -DriveLetter T -FileSystem NTFS -NewFileSystemLabel TEMP -AllocationUnitSize 65536 

Format-Volume -DriveLetter X -FileSystem NTFS -NewFileSystemLabel BACKUP

Format-Volume -DriveLetter P -FileSystem NTFS -NewFileSystemLabel APP
