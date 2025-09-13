# Automate Resource Account creation with Power Automate and Azure Automation

| [Home](README.md) | [About](about.md) | [Deployment Guide](deployment.md) | [Support](support.md) | 
| --- | --- | --- | --- |

## Background
As per [MC780743](https://portal.changepilot.cloud/MC780743), Microsoft is changing the permissions required to create resource accounts for Teams Phone voice applications. 

Starting mid-July 2024, only Microsoft 365 Global Admins or User Admins will be able to create and manage these accounts, impacting users with specific Teams admin roles. Organisations are advised to prepare by adjusting their processes accordingly.

Currently, the underlying Team service’s permission is used to create Resource Accounts in M365. After this change, the ability to create Resource Accounts will leverage the Microsoft 365 admin role’s permission to create user accounts instead of the underlying service’s permission.

The “Teams Administrator”, “Teams Communications Administrator” and “Teams Telephony Administrator” roles will not have user creation permissions so this change may result in disruption in your organisation’s ability to create these Resource Accounts.

Organisations that utilize those Teams roles will require Administrators with user creation permission such as Microsoft 365 Global Admin or User Admin to create and manage these Resource Accounts.


## Supporting Documentation
* [MC780743](https://portal.changepilot.cloud/MC780743)

## Support
If you encounter any bugs or issues while using the scripts, please raise them as issues [here](https://github.com/robwatts365/MicrosoftTeamsPhone-AutomateResourceAccounts/issues) in this GitHub repository. You can also submit pull requests with your suggestions or improvements to the code. The project team appreciates your feedback and support. 

Thank you for using this project and I hope you find it useful and helpful. 😊

## Pre-requisites
* A **Service Account** with: 
    * An appropriate license for:
      * Power Automate Premium Connectors or you could opt for
        [Power Platform PAYG.](https://learn.microsoft.com/en-us/power-platform/admin/pay-as-you-go-overview)
      *  SharePoint
    * The following admin roles:
      *	Either **Teams Telephony Administrator**, **Teams Communication Administrator** or **Teams Administrator** role.
      * **User Admin** role
* An Azure Subscription to create the Azure Automation


 > [!NOTE]
  >  Be sure to use the [Unmanaged Solution](ResourceAccountCreation_unmanaged.zip)  if you are looking to make changes to the solution.  

## Page info

| Name | README.md |
| :--- | :--- |
| Author | Rob Watts ([@robwatts365](https://github.com/robwatts365)) |
| **Version** | 1.0 |
| **Date** | 03/07/2024 |
