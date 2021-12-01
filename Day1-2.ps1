﻿$inputValue, $oldSum, $inputSum, $numIncreases = 0
$oldValues = [System.Collections.ArrayList]@()
(Read-Host -Prompt 'Gimme my numbers') -split [System.Environment]::NewLine | ForEach-Object {
    if([int]::TryParse($_, [ref]$inputValue)) {
        $oldSum = $inputSum
        $inputSum += $inputValue
        if($oldValues.Count -eq 3) { # number of values the rolling sum takes into account.
            $inputSum -= $oldValues[0];
            $oldValues.RemoveAt(0)
            if($inputSum -gt $oldSum) { $numIncreases += 1 }
        }
        $oldValues.Add($inputValue) | Out-Null
    }
}
Write-Output "Number of Increases: $numIncreases"