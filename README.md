# Vueren Kuraenir Advent of Code 2021
## Vueren Kuraenir's solutions for 2021


## Day 2-1:
Did this puzzle in PowerShell.

Ended up forgetting to convert to an integer this time around.

## Day 2-2:
Did this puzzle in PowerShell.

Managed to accidentally subtract instead of add when managing the aim. Did I mention that addition is hard?

## End of Day 2 Comments:
Sometimes, I worry how simple things seem to me. Maybe I should try for the leaderboards. It'll be tough to speed read in 30 seconds, code in a minute, and win, but should be doable. I just have to be ready to develop next time. Was too busy playing games before I remembered this came out, and by then I was already several minutes too late.

The main thing is making sure I don't make a simple mistake like addition. Is it wrong of me to say that I found Calculus easier than Kindergarten Arithmetic? To this day I still wonder how I didn't fail that part of Kindergarten...


## Day 1-1:
Did this puzzle in PowerShell.

Took a small while to remember how String Splitting and String to Integer conversion works. Other than that, pretty smooth.

## Day 1-2:
Did this puzzle in PowerShell.

Ended up hardcoding the old variables at first instead of using an ArrayList (OldValue1, OldValue2 instead of OldValues). Got the solution, then refactored to support any size of rolling summation.

Sadly, all my mistakes on this one ended up passing the small example and failing the large example. Addition is hard, yo.

## End of Day 1 Comments:
I feel I've come up with some pretty elegant solutions... considering the kind of code I usually write, in any case.

PowerShell is one of my favorite languages due to the integration with .NET and the simplicity and readability of the commands. You won't find yourself questioning what Read-Host does or why the text after it is what the Prompt displays. You won't think too much about piping into a ForEach loop (though that is honestly one of my favorite things to do just because of how few languages have a piping operator). And, for those of us with .NET experience, you won't even question much how to do something more complex once you learn how the types interact with PowerShell. PowerShell's default collections are a bit like C#'s arrays - only one size. So I use .NET's ArrayList instead, utilizing the Add, RemoveAt, and Count methods. Because I know how to convert from a string to an int in .NET (TryParse with a reference variable), I just do the same thing in PowerShell.

Honestly, I liked the 1-2 puzzle the most. It hit my thinking bone just enough to get me started and wanting some more. While I've spent years learning development, I don't exactly have much development experience so Advent of Code will be the perfect way for me to tackle problem solving in bite sized pieces.