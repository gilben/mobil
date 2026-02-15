# Script para probar el endpoint de la API

$url = "http://localhost:5002/api/age-check"
$body = @{
    age = 25
} | ConvertTo-Json

Write-Host "Probando endpoint: POST $url"
Write-Host "Body: $body"
Write-Host ""

try {
    $response = Invoke-WebRequest -Uri $url `
        -Method POST `
        -ContentType "application/json" `
        -Body $body `
        -UseBasicParsing
    
    Write-Host "Status: $($response.StatusCode)"
    Write-Host "Response: $($response.Content)"
} catch {
    Write-Host "Error: $($_.Exception.Message)"
    Write-Host "Details: $($_.Exception)"
}
