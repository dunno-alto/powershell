New-NetFirewallRule -DisplayName 'JBoss' -Profile 'Domain' -Direction Inbound -Action Allow -Protocol UDP -LocalPort 1099, 1100, 11003, 11099, 18080, 1098, 21, 25, 28080, 21098, 21100, 23873, 21099, 2222, 3873, 8000, 8080, 8443, 30001

New-NetFirewallRule -DisplayName 'JBoss' -Profile 'Domain' -Direction Outbound -Action Allow -Protocol UDP -LocalPort 1099, 1100, 11003, 11099, 18080, 1098, 21, 25, 28080, 21098, 21100, 23873, 21099, 2222, 3873, 8000, 8080, 8443, 30001

New-NetFirewallRule -DisplayName 'JBoss' -Profile 'Domain' -Direction Inbound -Action Allow -Protocol TCP -LocalPort 1099, 1100, 11003, 11099, 18080, 1098, 21, 25, 28080, 21098, 21100, 23873, 21099, 2222, 3873, 8000, 8080, 8443, 30001

New-NetFirewallRule -DisplayName 'JBoss' -Profile 'Domain' -Direction outbound -Action Allow -Protocol TCP -LocalPort 1099, 1100, 11003, 11099, 18080, 1098, 21, 25, 28080, 21098, 21100, 23873, 21099, 2222, 3873, 8000, 8080, 8443, 30001
