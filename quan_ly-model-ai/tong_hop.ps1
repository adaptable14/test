
# Script: tong_hop.ps1
# Tac gia: Hà Duy Mạnh 
# Ngay tao: 2026-11-10

Write-Host "Dang tao bao cao..."

"=== BAO CAO VAN HANH MODEL AI ===" | Set-Content .\logs\tong_hop.txt

Get-Content .\logs\inference.log | Select-String "WARNING" | Add-Content .\logs\tong_hop.txt

$errorCount = @(Get-Content .\logs\inference.log | Select-String "ERROR").Count

Add-Content .\logs\tong_hop.txt $errorCount

Write-Host "Hoan thanh!"
