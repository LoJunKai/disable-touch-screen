# Finds driver that has "touch screen" in it's Device description 
# (can be seen in Device manager > double click on your driver > Details > Property: Device description)
$driver = (Get-PnpDevice -FriendlyName "*touch screen*")

if ($driver) {
	# If device is present, proceed to enable/disable it
    switch ($driver.Status) {
        'OK' { 
        	# When device is enabled, disable it
        	Disable-PnpDevice -InstanceId $driver.InstanceId -Confirm:$false
        	Write-Host "Disabled Touch Screen"
        }

        default {
        	# When device is disabled, enable it
        	Enable-PnpDevice -InstanceId $driver.InstanceId -Confirm:$false
        	Write-Host "Enabled Touch Screen"
        }
    }
}
else {
	# If not, print out warning
    Write-Warning "Device not found"
}

# Uncomment the below command to see any error messages print out
# Read-Host "Press ENTER to continue"
