$arraytraverse = 1..100
Write-Host "Input the index # of element"
[int]$elementnumber = Read-Host
Write-Host "Max size of an Array:" $arraytraverse.Count
if ($elementnumber -gt $arraytraverse.Count) {
  write-host "Error: Your input is out of range, valid values are: 0 - " ($arraytraverse.Count-1)
}
else {
  write-host $elementnumber" Element in array is " $arraytraverse[$elementnumber]
}
