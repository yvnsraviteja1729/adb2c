param (
    [Parameter(Mandatory=$true)][string]$ScriptsPath = ""                                        
)

$files = get-childitem -path $ScriptsPath -name -include *.ps1 | Where-Object {! $_.PSIsContainer }
foreach( $file in $files ) {
    $PowerShellFile = (Join-Path -Path $PolicyPath -ChildPath $file)
    write-host $file
    write-host $PowerShellFile
    write-host "Preparing file $Power Shell File..."
    .\$PowerShellFile
}
