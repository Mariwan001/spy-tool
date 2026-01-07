# SPY Network Tool - One-Line Installer
# Creator: Mariwan Iraj

Write-Host ""
Write-Host "=================================" -ForegroundColor Cyan
Write-Host "  SPY NETWORK TOOL - INSTALLER" -ForegroundColor Cyan
Write-Host "  Creator: Mariwan Iraj" -ForegroundColor Cyan
Write-Host "=================================" -ForegroundColor Cyan
Write-Host ""

# Check for admin rights
if (-NOT ([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator")) {
    Write-Host "ERROR: Admin rights required!" -ForegroundColor Red
    Write-Host "Right-click PowerShell and 'Run as Administrator'" -ForegroundColor Yellow
    Write-Host ""
    pause
    exit
}

Write-Host "Downloading SPY..." -ForegroundColor Yellow

# Download URL (you'll replace this with your GitHub link)
$downloadUrl = "https://github.com/Mariwan001/spy-tool/releases/latest/download/spy.exe"
$installPath = "C:\Program Files\SPY"
$exePath = "$installPath\spy.exe"

# Create directory
if (-not (Test-Path $installPath)) {
    New-Item -ItemType Directory -Path $installPath -Force | Out-Null
}

# Download spy.exe
try {
    Invoke-WebRequest -Uri $downloadUrl -OutFile $exePath -UseBasicParsing
    Write-Host "Downloaded successfully!" -ForegroundColor Green
} catch {
    Write-Host "ERROR: Download failed!" -ForegroundColor Red
    Write-Host "URL: $downloadUrl" -ForegroundColor Yellow
    pause
    exit
}

# Add to PATH
Write-Host "Adding to system PATH..." -ForegroundColor Yellow
$currentPath = [Environment]::GetEnvironmentVariable("Path", "Machine")
if ($currentPath -notlike "*$installPath*") {
    [Environment]::SetEnvironmentVariable("Path", "$currentPath;$installPath", "Machine")
}

# Create uninstaller
$uninstallScript = @"
Write-Host 'Uninstalling SPY...' -ForegroundColor Yellow
Remove-Item -Path '$installPath' -Recurse -Force
Write-Host 'SPY uninstalled successfully!' -ForegroundColor Green
pause
"@
Set-Content -Path "$installPath\uninstall.ps1" -Value $uninstallScript

Write-Host ""
Write-Host "=================================" -ForegroundColor Green
Write-Host "  INSTALLATION COMPLETE!" -ForegroundColor Green
Write-Host "=================================" -ForegroundColor Green
Write-Host ""
Write-Host "Usage:" -ForegroundColor Cyan
Write-Host "  - Close and reopen CMD/PowerShell"
Write-Host "  - Type: spy --help"
Write-Host "  - Type: spy scanwifi"
Write-Host ""
Write-Host "To uninstall: $installPath\uninstall.ps1" -ForegroundColor Yellow
Write-Host ""
pause
```

**Save this as `install.ps1`**

---

## **Step 2: GitHub Repository Structure**

Create these folders/files:
```
spy-tool/
├── README.md
├── install.ps1
├── spy-installer.bat
└── releases/
    └── spy.exe
