#main function. runs cycle until it reaches $a. 
function doors($q){
$doors = foreach($number in 1..$q){New-Object psobject -property @{Name="Door $number";Open=$false}}
$i=1

do{

    foreach($number in 1..$q){if($number%$i -eq 0){toggle ($number-1)}}
    $i++
    }until($i -gt $q)
    $doors
    }
function Toggle($a){
    If($doors[$a].Open -eq $false){$doors[$a].Open=$true}
    Elseif($doors[$a].Open -eq $true){$doors[$a].Open=$false}
    }




