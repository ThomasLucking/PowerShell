$UserNumber = Read-Host "Please enter a number to calculate the surface area and the perimeter"
$surfaceArea = [math]::Round([math]::Pi * [math]::Pow($UserNumber, 2), 2)
$perimeter = [math]::Round(2 * [math]::Pi * $UserNumber, 2)

Write-Host "the surface area is $surfaceArea and the diameter is $perimeter"
