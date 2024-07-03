# Deployment Guide

| [Home](README.md) | [About](about.md) | [Deployment Guide](deployment.md) | [Support](support.md) | 
| --- | --- | --- | --- |

## 1. Pre-requisites
* A **Service Account** with: 
    * An appropriate license for:
      * Power Automate Premium Connectors or you could opt for
    *  [Power Platform PAYG.](https://learn.microsoft.com/en-us/power-platform/admin/pay-as-you-go-overview) 
      * SharePoint
    * The following admin roles:
      *	Either **Teams Telephony Administrator**, **Teams Communication Administrator** or **Teams Administrator** role.
      * **User Admin** role
* An Azure Subscription to create the Azure Automation


 > [!NOTE]
  >  Be sure to use the [Unmanaged Solution](ExtendEmergencyCallingNotifications_unmanaged.zip)  if you are looking to make changes to the solution.  

## 2. Configuration

### Creating the SharePoint List

The first thing you'll need to decide is where to host the SharePoint list holding the data for this solution. 

For the purpose of this guide, I have created a new Team in Microsoft Teams called Resource Accounts, and I will use this SharePoint site to host my SharePoint list.  

1) Navigate to the SharePoint site you have chosen to host the SharePoint list.
2) Click the "+ New" button.
3) Select "List".  
   <img src="https://github.com/robwatts365/MicrosoftTeamsPhone-AutomateResourceAccounts/assets/65971102/ba3a4aab-843c-4bb3-ba72-ae507f6d269b" width="200" />
4) Select "Blank List".  
   <img src="https://github.com/robwatts365/MicrosoftTeamsPhone-AutomateResourceAccounts/assets/65971102/416784dc-ff44-4f39-aa24-94d63c5efdc4" width="200" />
5) Give your list an appropriate name (I'm using ResourceAccounts)  
   <img src="https://github.com/robwatts365/MicrosoftTeamsPhone-AutomateResourceAccounts/assets/65971102/9129e764-9327-4041-9601-0976c22507ff" width="200" />
6) Once created, click the gear in the top right hand corner, and select List settings.  
   <img src="https://github.com/robwatts365/MicrosoftTeamsPhone-AutomateResourceAccounts/assets/65971102/96b895d8-1e3a-41c1-a61d-8cfaaf4c1fa5" width="200" />
7) Under Columns, select the "Title" column.  
   <img src="https://github.com/robwatts365/MicrosoftTeamsPhone-AutomateResourceAccounts/assets/65971102/20f6e588-d1c8-4ebd-917b-140333d1e52a" width="200" />
8) Rename the column's name to "ResourceAccountName".
9) Toggle "Require that this column contains information" to Yes.
10) Toggle "Enforce unique values" to Yes.  
   <img src="https://github.com/robwatts365/MicrosoftTeamsPhone-AutomateResourceAccounts/assets/65971102/766a317d-d0e7-4c90-8074-4ff2f1709158" width="200" />
11) Press OK in the bottom right corner of the window.
12) Click "Create column".  
   <img src="https://github.com/robwatts365/MicrosoftTeamsPhone-AutomateResourceAccounts/assets/65971102/4fe05ec4-10e4-4636-9a67-5fed6121dffc" width="200" />
13) Name the column "ResourceAccountDisplayName".
14) Toggle "Require that this column contains information" to Yes.  
   <img src="https://github.com/robwatts365/MicrosoftTeamsPhone-AutomateResourceAccounts/assets/65971102/8a8244d5-fb52-4a8f-a2bb-b2482959665c" width="200" />
15) Press OK in the bottom right corner of the window. Click "Create column".
16) Click "Create column".  
   <img src="https://github.com/robwatts365/MicrosoftTeamsPhone-AutomateResourceAccounts/assets/65971102/4fe05ec4-10e4-4636-9a67-5fed6121dffc" width="200" />
17) For **The type of information in this column is**, select "Choice".
18) Name the column "ResourceAccountDisplayType".
19) Toggle "Require that this column contains information" to Yes.
20) In the **Type each choice on a separate line:** box, add CallQueue and AutoAttendant on separate lines.  
   <img src="https://github.com/robwatts365/MicrosoftTeamsPhone-AutomateResourceAccounts/assets/65971102/98bb851d-83f3-4c8b-91b5-984c23f22a9c" width="200" />
21) Press OK in the bottom right corner of the window.

### Deploying the Azure Automation Runbook

### Deploying the Power App Solution

1) Download the Solution export.
      | Version | Notes |
   | :--- | :--- |
   | [Managed Solution](ExtendEmergencyCallingNotifications_managed.zip) | If you're only looking to use the Core Solution. |
   | [Unmanaged Solution](ExtendEmergencyCallingNotifications_unmanaged.zip) | If you're looking to tweek/extend the solution further. |  
2) Nagivate to [Power Apps](https://make.powerapps.com/). Remember to sign in with the **Service Account** you created above. 
3) From the left rail, select **Solutions**  
4) Select "Import Solution"  
5) Click "Browse"  
6) Select the downloaded solution. 
7)  Click "Next"
8)  Click "Next" again. 
9)  Verify and sign in to the connectors.  
10) Click "Next"
11) For **'SPOSite'**, select the SharePoint site where your list resides. 
12) For **'SPOList'**, select your list 
13) For **Site Prefix**, enter the Prefix as detailed in the pre-requisites.  
14) Click "Import".


## Page info

| Page | Deployment Guide |
| :--- | :--- |
| Author | Rob Watts ([@robwatts365](https://github.com/robwatts365)) |
| **Version** | 1.0 |
| **Date** | 03/07/2024 |
