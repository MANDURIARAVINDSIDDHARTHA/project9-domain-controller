# Project 9: Domain Controller Setup
Install-WindowsFeature -Name AD-Domain-Services -IncludeManagementTools
Install-ADDSForest -DomainName "project9.local" -DomainNetbiosName "PROJECT9" -InstallDns -SafeModeAdministratorPassword (Read-Host -AsSecureString "Enter DSRM password") -Force
New-ADUser -Name "User One" -SamAccountName "user1" -UserPrincipalName "user1@project9.local" -AccountPassword (ConvertTo-SecureString "<password>" -AsPlainText -Force) -Enabled $true
New-ADUser -Name "User Two" -SamAccountName "user2" -UserPrincipalName "user2@project9.local" -AccountPassword (ConvertTo-SecureString "<password>" -AsPlainText -Force) -Enabled $true
Get-ADUser -Filter 'SamAccountName -like "user*"' | Select Name, SamAccountName, Enabled
