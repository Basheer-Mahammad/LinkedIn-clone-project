#!/usr/bin/env pwsh

Write-Host "========================================" -ForegroundColor Green
Write-Host "    LinkedIn Backend - Email Enabled   " -ForegroundColor Green  
Write-Host "========================================" -ForegroundColor Green
Write-Host ""
Write-Host "Starting backend with Gmail configuration..." -ForegroundColor Yellow
Write-Host "Backend URL: http://localhost:8081" -ForegroundColor Cyan
Write-Host "Email Test: http://localhost:8081/test-email?toEmail=your-email@gmail.com" -ForegroundColor Cyan
Write-Host ""

Set-Location $PSScriptRoot

try {
    Write-Host "Building application..." -ForegroundColor Yellow
    & .\gradlew.bat build -x test
    
    Write-Host "Starting Spring Boot application..." -ForegroundColor Yellow
    & .\gradlew.bat bootRun
} catch {
    Write-Host "Error starting backend: $_" -ForegroundColor Red
    Read-Host "Press Enter to exit"
}