# Deployment Guide

| [Home](README.md) | [About](about.md) | [Deployment Guide](deployment.md) | [Support](support.md) | 
| --- | --- | --- | --- |

## 1. Pre-requisites
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
   
14) Name the column "ResourceAccountDisplayName".
15) Toggle "Require that this column contains information" to Yes.  
      <img src="https://github.com/robwatts365/MicrosoftTeamsPhone-AutomateResourceAccounts/assets/65971102/8a8244d5-fb52-4a8f-a2bb-b2482959665c" width="200" />
   
16) Press OK in the bottom right corner of the window. Click "Create column".
17) Click "Create column".  
      <img src="https://github.com/robwatts365/MicrosoftTeamsPhone-AutomateResourceAccounts/assets/65971102/4fe05ec4-10e4-4636-9a67-5fed6121dffc" width="200" />
   
18) For **The type of information in this column is**, select "Choice".
19) Name the column "ResourceAccountDisplayType".
20) Toggle "Require that this column contains information" to Yes.
21) In the **Type each choice on a separate line:** box, add CallQueue and AutoAttendant on separate lines.  
      <img src="https://github.com/robwatts365/MicrosoftTeamsPhone-AutomateResourceAccounts/assets/65971102/98bb851d-83f3-4c8b-91b5-984c23f22a9c" width="200" />
   
22) Press OK in the bottom right corner of the window.

### Deploying the Azure Automation Runbook
1) Navigate to the [Azure Portal](https://portal.azure.com/)
2) Find a suitable Azure subscription to use.
3) In the search bar, search for **"Automation Accounts"**
4) Select **"Automation Accounts"** from the dropdown list.  
      <img src="https://github.com/robwatts365/MicrosoftTeamsPhone-AutomateResourceAccounts/assets/65971102/8e6afdc7-ff22-4d86-9fc2-bd52fee65711" width="200" />

5) Click **+ Create**  
      <img src="https://github.com/robwatts365/MicrosoftTeamsPhone-AutomateResourceAccounts/assets/65971102/c4b0840e-260b-4f81-8f2e-e0e9d5cd76c5" width="200" />

6) Select the Subscription, Resource Group and give the Automation Account a name. 
7) Select the appropriate region.  
      <img src="https://github.com/robwatts365/MicrosoftTeamsPhone-AutomateResourceAccounts/assets/65971102/cbaab9e1-855a-4b03-8d00-34806c65a706" width="200" />

8) Click **Review + Create**.  
      <img src="https://github.com/robwatts365/MicrosoftTeamsPhone-AutomateResourceAccounts/assets/65971102/fbff2a83-5162-4e33-a82c-46f85ce9b32a" width="200" />

    
> [!TIP]
   > Remember to make a note of the following **(We'll need these later.)**:
> 1) Subscription ID
> 2) Resource Group name
> 3) Automation account name   

9) Once create, go to the newly created Automation Account.
10) In the menu, under **Shared Resources**, go to **Modules**.  
      <img src="https://github.com/robwatts365/MicrosoftTeamsPhone-AutomateResourceAccounts/assets/65971102/f4fb3a59-b75d-4933-a50c-c923809c4de2" width="200" />
 
11) Select **Add a module**.
12) Choose the **Browse from Gallery** radio button.
13) Click **Click here to browse from gallery**  
      <img src="https://github.com/robwatts365/MicrosoftTeamsPhone-AutomateResourceAccounts/assets/65971102/11e34e55-00f0-433f-a974-dd304db181c4" width="200" />

14) In the Search bar, type **MicrosoftTeams**, and click enter. 
15) Select **MicrosoftTeams**.  
      <img src="https://github.com/robwatts365/MicrosoftTeamsPhone-AutomateResourceAccounts/assets/65971102/59337a49-156a-4cd9-9654-68d331fea1c8" width="200" />

16) Click **Select**.  
      <img src="https://github.com/robwatts365/MicrosoftTeamsPhone-AutomateResourceAccounts/assets/65971102/2491b582-bb33-45c9-8d31-5089d8765782" width="200" />

17) For **Runtime version**, select 5.1.  
      <img src="https://github.com/robwatts365/MicrosoftTeamsPhone-AutomateResourceAccounts/assets/65971102/3c39e2a4-9092-4300-b9a2-d0f142b8791b" width="200" />

18) Click Import.  
      <img src="https://github.com/robwatts365/MicrosoftTeamsPhone-AutomateResourceAccounts/assets/65971102/3ea5f6f1-8eae-41fd-8e9c-c212b0ad6c72" width="200" />

19) Next, under **Shared Resources**, navigate to **Credentials**.  
      <img src="https://github.com/robwatts365/MicrosoftTeamsPhone-AutomateResourceAccounts/assets/65971102/54ddc787-8c95-4507-8b86-ad5d2f785588" width="200" />

20) Click **Add a credential**.  
    <img src="https://github.com/robwatts365/MicrosoftTeamsPhone-AutomateResourceAccounts/assets/65971102/333055cc-c515-454d-9d0d-b44c614cc7db" width="200" />

21) For the name, enter **"ResourceAccountCreation"**.  
22) Enter the Username (UPN), and password for the Service Account detailed in the pre-requisites.
23) Click **Save**.  
      <img src="https://github.com/robwatts365/MicrosoftTeamsPhone-AutomateResourceAccounts/assets/65971102/0c453050-e8fd-46b1-b97f-d4af69d713fb" width="200" />

24) Download a copy of the [runbook](ResourceAccountCreation.ps1) locally. 
25) Under **Process Automation** in the menu, navigate to **Runbooks**.  
      <img src="https://github.com/robwatts365/MicrosoftTeamsPhone-AutomateResourceAccounts/assets/65971102/66ec27aa-7e1f-4f6b-915f-52730d791492" width="200" />

26) Click **Import Runbook**  
      <img src="https://github.com/robwatts365/MicrosoftTeamsPhone-AutomateResourceAccounts/assets/65971102/8003706f-6862-4771-aafc-3ee23b25d268" width="400" />

27) For **Runbook file**, select the downloaded [runbook](ResourceAccountCreation.ps1) file. 
28) **Runbook type** should be set to **PowerShell**
29) For **Runtime version** select **5.1**.
30) Click **Import**.  
     <img src="https://github.com/robwatts365/MicrosoftTeamsPhone-AutomateResourceAccounts/assets/65971102/93082d0e-d909-46ef-8b1c-ea4cae1d79d9" width="200" />

31) Once impoted, click **Publish**.  
      <img src="https://github.com/robwatts365/MicrosoftTeamsPhone-AutomateResourceAccounts/assets/65971102/6fbebe60-e9c1-40fd-968f-a4a09db4fcab" width="400" />


### Deploying the Power App Solution

1) Download the Solution export.
      | Version | Notes |
   | :--- | :--- |
   | [Managed Solution](ResourceAccountCreation_managed.zip) | If you're looking to use the Solution as-is. |
   | [Unmanaged Solution](ResourceAccountCreation_unmanaged.zip) | If you're looking to tweek the solution. |  
2) Nagivate to [Power Apps](https://make.powerapps.com/). Remember to sign in with the **Service Account** detailed in the pre-requisites. 
3) From the left rail, select **Solutions**  
4) Select "Import Solution"
   ![image](https://github.com/robwatts365/MicrosoftTeamsPhone-AutomateResourceAccounts/assets/65971102/962f323c-25ce-4f4d-b15a-a7297aee5327)
 
6) Click "Browse"
   ![image](https://github.com/robwatts365/MicrosoftTeamsPhone-AutomateResourceAccounts/assets/65971102/da1c5177-1c2c-4c11-9dd4-3efaaeb66d48)

8) Select the downloaded solution. 
9)  Click "Next"
10)  Click "Next" again. 
11)  Verify and sign in to the connectors.
![image](https://github.com/robwatts365/MicrosoftTeamsPhone-AutomateResourceAccounts/assets/65971102/bba160ac-07bc-4414-9b66-1c27ac23ac5c)
  
13) Click "Next"
14) On the Environment Variables page, enter the variables requested.
    1)  resource_AzSubscriptionID - Enter the Subscription ID from Azure
    2)  resource_AzResourceGroupName - Enter the name of the Resource Group
    3)  resource_AzAutomationAccount - Enter the Automation Account Name
    4)  resource_AzRunbookName - Enter the Runbook Name
    5)  resource_Resource Account Domain - Enter the domain you wish your Resource Account to use (eg. contoso.com)
    6)  resource_SPOSite - select the SharePoint site where your list resides.
    7)  resource_SPOList - select your list
15) Click "Import".

The solution is now deployed and ready to use! 

## Page info

| Page | Deployment Guide |
| :--- | :--- |
| Author | Rob Watts ([@robwatts365](https://github.com/robwatts365)) |
| **Version** | 1.0 |
| **Date** | 03/07/2024 |
