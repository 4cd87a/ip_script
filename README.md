# ip_script
It's a script to check ip address using ifconfig.co

# What to do
* Download myip.ps1 and myip.lnk
* Put myip.ps1 where you want
* Put myip.lnk in 
`C:\Users\`__[your user]__`\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\`__[subfolder, whatever you want]__
* Change in properties of myip.lnk the target to:
`C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe -ExecutionPolicy Bypass -File "C:\`__[path to myip.ps1]__`\myip.ps1"  -WindowsStyle Hidden`
* Enjoy
