### Create scheduled task to run Google Chrome
### Author: Mohammed Rohman
### Date: 4th April 2024

## Set Trigger, Task, Settings
$JBNTrigger = New-ScheduledTaskTrigger -Daily -At 5:00am
$JBNAction = New-ScheduledTaskAction -Execute "Google Chrome" -Argument "/Scannow"
$JBNSetting = New-ScheduledTaskSettingsSet -Compatibility Win8 -AllowStartIfOnBatteries -StartWhenAvailable -DontStopIfGoingOnBatteries

$JBNTask = New-ScheduledTask -Trigger $JBNTrigger -Action $JBNAction -Settings $JBNSetting -Description "Google Chrome daily run at 5am"

## Create/Register Scheduled Task
Register-ScheduledTask -TaskPath \JBN\ -TaskName "Google Chrome daily run at 5am" -InputObject $JBNTask -User "NT AUTHORITY\SYSTEM"
