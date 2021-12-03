$hpos, $depth = 0
(Get-Content -Path '.\input.txt') -split [System.Environment]::NewLine | ForEach-Object {
    $command = $_ -split ' ' # [0] is direction, [1] is magnitude
    $dir = $command[0]
    $num = [int]$command[1]
    if($dir -eq 'forward') { $hpos += $num }
    if($dir -eq 'up' -and $depth - $num -ge 0) { $depth -= $num }
    if($dir -eq 'down') { $depth += $num }
}
Write-Output "Forward $hpos`nDepth $depth"
Write-Output "Result: $($hpos*$depth)"
Read-Host -Prompt 'Tada! Hit enter to close the script' | Out-Null