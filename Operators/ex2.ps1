$FirstNumber = Read-Host "Enter first number"
$SecondNumber = Read-Host "Enter second number"

$FirstNumber = [int]$FirstNumber
$SecondNumber = [int]$SecondNumber

if ($FirstNumber -gt $SecondNumber) {
    Write-Host "$FirstNumber is greater than $SecondNumber"
} elseif ($FirstNumber -lt $SecondNumber) {
    Write-Host "$FirstNumber is less than $SecondNumber"
} else {
    Write-Host "$FirstNumber is equal to $SecondNumber"
}