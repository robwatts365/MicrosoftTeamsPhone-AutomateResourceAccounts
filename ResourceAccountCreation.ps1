<# 
MicrosoftTeamsPhone-AutomateResourceAccounts
    Version: v1.0
    Date: 03/07/2024
    Author: Rob Watts https://github.com/robwatts365
    Description: This script creates a Resource Account in Teams as either a Call Queue or Auto Attendant based on parameters passed from Power Automate.
#>

#Set Parameters from Flow
Param (
[string] $ResourceAccountName="",
[string] $ResourceAccountDisplayName="",
[string] $ResourceAccountType="",
[string] $ResourceAccountDomain=""
)


#Use credentials from Runbook
$credentials = Get-AutomationPSCredential -Name 'ResourceAccountCreation'

#Connect to modules
Connect-MicrosoftTeams -Credential $credentials | Out-Null

If($ResourceAccountType -eq "CallQueue"){
    
New-CsOnlineApplicationInstance -UserPrincipalName "$ResourceAccountName@$ResourceAccountDomain" -ApplicationId 11cd3e2e-fccb-42ad-ad00-878b93575e07 -DisplayName "$ResourceAccountDisplayName"

} Else {
New-CsOnlineApplicationInstance -UserPrincipalName "$ResourceAccountName@$ResourceAccountDomain" -ApplicationId ce933385-9390-45d1-9512-c8d228074e07 -DisplayName "$ResourceAccountDisplayName"
}



#Write error back to flow
If($Error){
Write-Output "Something went wrong... $Error"
}
Else {
Write-Output "Completed okay"}

