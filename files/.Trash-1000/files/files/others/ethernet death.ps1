# Uruchom "curl parrot.live" w tle 100 razy
for ($i=1; $i -le 100; $i++) {
    Start-Process powershell.exe -WindowStyle Hidden -ArgumentList 'curl parrot.live'
}
