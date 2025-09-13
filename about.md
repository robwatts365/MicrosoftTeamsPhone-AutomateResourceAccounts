# Automate Resource Account creation with Power Automate and Azure Automation

| [Home](README.md) | [About](about.md) |[Deployment Guide](deployment.md) | [Support](support.md) | 
| --- | --- | --- | --- |


## Overview
This project was created to help Microsoft customers to automate creation of Resource Accounts for Microsoft Teams Phone, given the changes in permissions required. 

As per [MC780743](https://portal.changepilot.cloud/MC780743), Microsoft is changing the permissions required to create resource accounts for Teams Phone voice applications. 

Starting mid-July 2024, only Microsoft 365 Global Admins or User Admins will be able to create and manage these accounts, impacting users with specific Teams admin roles. Organisations are advised to prepare by adjusting their processes accordingly.

Currently, the underlying Team service’s permission is used to create Resource Accounts in M365. After this change, the ability to create Resource Accounts will leverage the Microsoft 365 admin role’s permission to create user accounts instead of the underlying service’s permission.

The “Teams Administrator”, “Teams Communications Administrator” and “Teams Telephony Administrator” roles will not have user creation permissions so this change may result in disruption in your organisation’s ability to create these Resource Accounts.

Organisations that utilize those Teams roles will require Administrators with user creation permission such as Microsoft 365 Global Admin or User Admin to create and manage these Resource Accounts.

## Benefits
* Reduction in requirement for highly elevated roles in an RBAC model

## How it works

Built using the Power Platform and Azure Automation runbooks, this solution takes Resource Account details added to a SharePoint and creates a Voice Application Instance in Microsoft Teams, these accounts are used for voice apps such as Call Queues and Auto-Attendants.

An Azure Automation runbook is used to automate this process, so Administrators are not required to be given the User Admin role.

The user who created the entry in the SharePoint list, is then sent a message in Teams to confirm the account has been created. 

 > [!NOTE]
  >  Be sure to use the [Unmanaged Solution](ExtendEmergencyCallingNotifications_unmanaged.zip)  if you are looking to make changes to the solution.  



## Page info

| Page | About |
| :--- | :--- |
| Author | Rob Watts ([@robwatts365](https://github.com/robwatts365)) |
| **Version** | 1.0 |
| **Date** | 03/07/2024 |



