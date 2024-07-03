<# 
MicrosoftTeamsPhone-AutomateResourceAccounts
    Version: v1.0
    Date: 03/07/2024
    Author: Rob Watts - Cloud Solution Architect - Microsoft
    
DISCLAIMER
   THIS CODE IS SAMPLE CODE. THESE SAMPLES ARE PROVIDED "AS IS" WITHOUT WARRANTY OF ANY KIND.
   MICROSOFT FURTHER DISCLAIMS ALL IMPLIED WARRANTIES INCLUDING WITHOUT LIMITATION ANY IMPLIED WARRANTIES
   OF MERCHANTABILITY OR OF FITNESS FOR A PARTICULAR PURPOSE. THE ENTIRE RISK ARISING OUT OF THE USE OR
   PERFORMANCE OF THE SAMPLES REMAINS WITH YOU. IN NO EVENT SHALL MICROSOFT OR ITS SUPPLIERS BE LIABLE FOR
   ANY DAMAGES WHATSOEVER (INCLUDING, WITHOUT LIMITATION, DAMAGES FOR LOSS OF BUSINESS PROFITS, BUSINESS
   INTERRUPTION, LOSS OF BUSINESS INFORMATION, OR OTHER PECUNIARY LOSS) ARISING OUT OF THE USE OF OR
   INABILITY TO USE THE SAMPLES, EVEN IF MICROSOFT HAS BEEN ADVISED OF THE POSSIBILITY OF SUCH DAMAGES.
   BECAUSE SOME STATES DO NOT ALLOW THE EXCLUSION OR LIMITATION OF LIABILITY FOR CONSEQUENTIAL OR
   INCIDENTAL DAMAGES, THE ABOVE LIMITATION MAY NOT APPLY TO YOU.
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

