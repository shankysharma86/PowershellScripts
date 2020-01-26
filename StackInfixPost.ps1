[string]$OutputExpression
[array]$StackArray = ''
[int]$Top=-1
[boolean]$IsEmpty=$true

function StackEngine () {
  param([char]$temp)
  write-host "I am in StackEngine: $temp"
  if ($Top -eq -1) {
    push($temp)
  }
  if ('+' -eq '-') {Write-host "We are equal"}
}

function push () {
  param([char]$temp)
  $Top = $Top+1
  $StackArray[$Top] = $temp
}

function pop () {
  param([char]$temp)
  --$Top
  $StackArray[$Top] = $temp
}

Write-Host "Enter the expression in Infix"
[string]$expression = Read-Host
[int]$i=0

While ($i -lt $expression.Length){
  write-host $expression[$i]
  switch ($expression[$i]) {
    '+' {
          StackEngine($expression[$i])
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
Write-Host "Stack Value: " $StackArray
