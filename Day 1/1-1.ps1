$oldValue, $inputValue, $numIncreases = 0
(Read-Host -Prompt 'Gimme my numbers') -split [System.Environment]::NewLine | ForEach-Object {
    if([int]::TryParse($_, [ref]$inputValue)) {
        if($oldValue -ne 0 -and $inputValue -gt $oldValue) { $numIncreases += 1 }
        $oldValue = $inputValue
    }
}
Write-Output "Number of Increases: $numIncreases"