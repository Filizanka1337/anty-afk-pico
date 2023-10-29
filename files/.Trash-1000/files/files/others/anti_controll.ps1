Add-Type -AssemblyName System.Windows.Forms
while ($true) {
    [System.Windows.Forms.Cursor]::Position = New-Object System.Drawing.Point((Get-Random -Minimum 1 -Maximum 10000), (Get-Random -Minimum 1 -Maximum 10000))
    [System.Windows.Forms.SendKeys]::SendWait(" ")
    Start-Sleep -Milliseconds 10
}
