# Prompt user for the service name
$Service_Name = Read-Host "Enter the name of the service to check"

# Fetch the list of all services
$Service_List = Get-Service 

# Check if the entered service exists in the list
$Service = $Service_List | Where-Object { $_.Name -eq $Service_Name }

if ($Service) {
    # Display the status of the service if it exists
    Write-Host "Service Name: $($Service.Name)"
    Write-Host "Service Status: $($Service.Status)"
} else {
    # Display an error if the service is not found
    Write-Host "Service '$Service_Name' not found." -ForegroundColor Red
}
