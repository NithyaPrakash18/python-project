# Download MongoDB Community Edition
$mongodbUrl = "https://fastdl.mongodb.org/windows/mongodb-windows-x86_64-7.0.1-signed.msi"
$mongodbInstaller = "mongodb.msi"

# Download the installer
Write-Host "Downloading MongoDB Community Edition..."
Invoke-WebRequest -Uri $mongodbUrl -OutFile $mongodbInstaller

# Install MongoDB
Write-Host "Installing MongoDB..."
Start-Process msiexec.exe -Wait -ArgumentList "/i $mongodbInstaller /quiet"

# Clean up
Write-Host "Cleaning up..."
Remove-Item $mongodbInstaller

# Start MongoDB Service
Write-Host "Starting MongoDB Service..."
Start-Service MongoDB

Write-Host "MongoDB installation completed successfully!"
Write-Host "You can now connect using:"
Write-Host "Username: admin"
Write-Host "Password: admin123"
Write-Host "Host: localhost"
Write-Host "Port: 27017"
