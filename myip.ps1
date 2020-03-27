$cont = (wget ifconfig.co/json | select -First 1 -ExpandProperty 'Content') | ConvertFrom-Json
#Write-Host $cont
Write-Host "ip = $($cont.ip)"
Write-Host "country = $($cont.country)"
Write-Host "city = $($cont.city)"
Write-Host "hostname = $($cont.hostname)"
Write-Host "asn org = $($cont.asn_org)"
PAUSE
#Write-Host "user agent = $($cont.user_agent)"