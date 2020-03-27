$cont = (wget ifconfig.co/json | select -First 1 -ExpandProperty 'Content') | ConvertFrom-Json
#Write-Host $cont
Write-Host "ip = $($cont.ip)"
Write-Host "country = $($cont.country)"
Write-Host "city = $($cont.city)"
Write-Host "hostname = $($cont.hostname)"
Write-Host "asn org = $($cont.asn_org)"

Write-Host "Press enter to end or spacebar for speedtest"


$pressed = $false
$speedtest = $false
do {
    $key = [Console]::ReadKey(“NoEcho,IncludeKeyDown”)
    $value = $key.KeyChar
    

    switch($key.key) {
        'Enter' { $pressed=$true}
        'Spacebar' { 
            $pressed=$true
            $speedtest = $true
           }
    }
}while ($pressed -ne $true)

#Write-Host "user agent = $($cont.user_agent)"

if ($speedtest -eq $true) {
    curl https://raw.githubusercontent.com/sivel/speedtest-cli/master/speedtest.py | select -First 1 -ExpandProperty 'Content'| python -
    PAUSE
}
