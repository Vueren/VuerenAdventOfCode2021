$hpos, $depth, $aim = 0
(Get-Content -Path '.\input.txt') -split [System.Environment]::NewLine | ForEach-Object {
    $command = $_ -split ' ' # [0] is direction, [1] is magnitude
    $dir = $command[0]
    $num = [int]$command[1]
    if($dir -eq 'forward') {
        $hpos += $num
        $depth += $aim * $num
    }
    if($dir -eq 'up') { $aim -= $num }
    if($dir -eq 'down') { $aim += $num }
}
Write-Output "Forward $hpos`nDepth $depth"
Write-Output "Result: $($hpos*$depth)"
Read-Host -Prompt 'Tada! Hit enter to close the script' | Out-Null