#Just change the 9999 to the port you want to test, run lines 1 and 2, run a netstat -ano | findstr #### (port).
$Port = Read-Host -Prompt 'Input Desired Listener Port Number'
$Listener = [System.Net.Sockets.TcpListener]
$ListenerPort = $Listener,$Port;
$ListenerPort.Start();
#wait, try connect from another PC etc.
$ListenerPort.Stop();