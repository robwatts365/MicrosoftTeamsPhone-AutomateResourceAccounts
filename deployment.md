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
3) Select "Blank List".  
4) Give your list an appropriate name (I'm using ResourceAccounts)
5) Once created, click the gear in the top right hand corner, and select List settings.  
6) Under Columns, select the "Title" column.  
7) Rename the column's name to "ResourceAccountName".
8) Toggle "Require that this column contains information" to Yes. 
9) Toggle "	Enforce unique values" to Yes.  
10) Press OK in the bottom right corner of the window. 
11) Click "Create column".  
12) Name the column "ResourceAccountDisplayName".
13) Toggle "Require that this column contains information" to Yes.
14) Press OK in the bottom right corner of the window. Click "Create column".  
15) Click "Create column".
16) For **The type of information in this column is**, select "Choice"
17) Name the column "ResourceAccountDisplayType".
18) Toggle "Require that this column contains information" to Yes.  
19) In the **Type each choice on a separate line:** box, add CallQueue and AutoAttendant on separate lines. 
20) Press OK in the bottom right corner of the window. 

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
