[string]$OutputExpression
[array]$StackArray
[int]$Top=-1
[boolean]$IsEmpty=$true

function [int] StackEngine ([char]$temp) {
  write-host "I am in StackEngine"
  if  ($StackArray -eq)
}

function push ([char]$temp) {

}

function [char] pop () {
  StackArray[$Top]

}

Write-Host "Enter the expression in Infix"
[string]$expression = Read-Host
[int]$i=0

While ($i -lt $expression.Length){
  write-host $expression[$i]
  # If ($expression -is ('+' -OR '-' -OR '*' -OR '/' -OR '^')) {}
  switch ($expression[$i]) {
    '+' { write-Host "This is +"
          StackEngine($expression[$i])
          if ($Top -eq -1) {
            push('$expression[$i]')
          }
          else if ($)
          pop
        }
    '-' { write-host "This is -"}
    '*' { write-host "This is *"}
    '/' { write-host "This is /"}
    '^' { write-host "This is ^"}
    '(' { write-host "This is ("}
    ')' { write-host "This is )"}
    Default {
      $OutputExpression = $OutputExpression + $expression[$i]
    }
  }
  ++$i
}

Write-Host $OutputExpression
