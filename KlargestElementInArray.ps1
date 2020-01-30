#Assign values to the array
[int[]]$numbers = 4,9,1,5,6

#Sort an array
$numbers = $numbers | sort-object
write-host $numbers

Write-Host "Enter the value 1 - " $numbers.GetUpperBound(0) "to see the number of largest values in an array"
#Get input from user
[int]$temp = Read-Host

#To list the requested # of array elements with largest #
For ($i=0;$i -lt $temp; $i++) {
  write-host $numbers[$numbers.GetUpperBound(0) - $i]
}
