[int[]]$array = 24,0,32,4,5,9,6,3,42,23,1,-1,-2,-3,-4,0
$Count = 0

$array = $array | Sort-object

Write-host $array

[int]$temp = $array.GetUpperBound(0)

For ([int]$i=0; $i -le ($temp-2); $i++){
  For ([int]$j=$i+1; $j -le ($temp-1); $j++){
    For ([int]$k=$i+2; $k -le ($temp); $k++){
      If ([int]($array[$i] + $array[$j] + $array[$k]) -eq ([int]24) ) {
        Write-Host $array[$i] + $array[$j] + $array[$k] + " = 24 `n"
        $Count=1
      }
    }
  }
}
if ($Count -ne 0){
  Write-Host "Couldn't find any match for the Sum value of 24"
}
