$irp_printout_location = "$home\desktop\IRP Print Outs" #where printable version of irp software will be stored
if (-not (Test-Path "$irp_printout_location")) #tests if the desktop folder where irp software will be stored
{
    New-Item -ItemType directory -Path $irp_printout_location
}
Copy-Item "C:\dosprogs\IRP\PRINTIRP.LST" "$irp_printout_location"
Rename-Item -ErrorAction SilentlyContinue -Path  "$irp_printout_location\PRINTIRP.LST" -newname "temp.txt"
Start-Sleep 1
$accountline = Get-Content -path $irp_printout_location\temp.txt | Select-String 'Name:' -CaseSensitive -Exclude "@"
$accountline
$accountname = $accountline -replace "@ *" -replace "Name:"-replace "Cust.*" -replace '\s+', ' ' -replace '/',' ' -replace "upload*"
$accountname
Rename-Item -ErrorAction SilentlyContinue -Path "$irp_printout_location\temp.txt" -NewName "$accountname.txt"