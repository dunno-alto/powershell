Move-ClusterGroup -Name "Cluster Group" -Node sdi-hasql-03
Move-ClusterGroup -Name "SQL Server (MSSQLSERVER)" -Node sdi-hasql-03

Move-ClusterGroup -Name "Cluster Group" -Node sdi-hasql-04
Move-ClusterGroup -Name "SQL Server (MSSQLSERVER)" -Node sdi-hasql-04




 Move-Clustergroup -Name "Cluster Group" -Node SLR-SDSDB-01
 Move-ClusterGroup -Name "SLR-SDSDB-AO" -Node SLR-SDSDB-01
 