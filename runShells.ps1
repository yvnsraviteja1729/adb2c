param (
    [Parameter(Mandatory=$true)][string]$ScriptsPath = ""                                        
)
write-host $ScriptsPath
write-host "hello world"
if ( "" -eq $ScriptsPath ) {
    $ScriptsPath = (get-location).Path
}
write-host $ScriptsPath
$files = get-childitem -path $ScriptsPath -name -include *.ps1 | Where-Object {! $_.PSIsContainer }
write-host $files
foreach( $file in $files ) {
    $PowerShellFile = (Join-Path -Path $ScriptsPath -ChildPath $file)
    write-host $file
    write-host $PowerShellFile
    write-host "Preparing file $Power Shell File..."
    $PowerShellFile
}
