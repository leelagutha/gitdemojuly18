--******************************************************************************************
--  Name   : DBCR_5121_OY4_CAM_DML.sql
--  Author : CAM Development Team
--  Purpose:           
--******************************************************************************************

set echo on
set feedback on
set define off
set sqlblanklines on
set timing on

spool DBCR_5121_OY4_CAM_DML.log
----
-- These updates are for part of Bug 31415 where extra dashes were added to the end of the body text
UPDATE EMAIL_INFO SET body ='<br> 
[DATE]

<p>
This is to notify you that a letter has been created for Compliance Issue ID(s) listed below in the HPMS Compliance Activity Module, and requires approval. 

<br/><br/>
 
[BATCH_ID]
[COMPLIANCE_ISSUE_ID] [PARENT_ORGANIZATION_NAME] [LETTER_SIGNATORY] [CONTRACT_ID] 


<br><br> 
To approve the letter in HPMS, please follow the instructions below. 
<br>
--------------------------------
--------------------------------
<br>
INSTRUCTIONS
<br>
--------------------------------
--------------------------------
<br> 
1. Go to this URL: https://hpms.cms.gov/app/login.aspx
<br>
2. Navigate to the Compliance Activity Pre-Approval page
</p> 
This e-mail was sent from an automated system. PLEASE DO NOT REPLY. If you have any questions, please contact your CMS Compliance-In-Charge for assistance.' 
WHERE EMAIL_INFO_ID = 3;

COMMIT;                         

UPDATE EMAIL_INFO SET body ='<br>  

[DATE]

<p>
This is to notify you that the below compliance issue(s) have been created in the HPMS Compliance Activity Module, and requires pre-approval.

<br/><br/>
 
[BATCH_ID]
[COMPLIANCE_ISSUE_ID] [TYPE OF ACTION] [PARENT_ORGANIZATION_NAME] [CONTRACT_ID]  

<br><br> 
To pre-approve the compliance issue(s) in HPMS, please follow the instructions below.
<br>
--------------------------------
--------------------------------
<br>
INSTRUCTIONS
<br>
--------------------------------
--------------------------------
<br>
1. Go to this URL: https://hpms.cms.gov/app/login.aspx
<br>
2. Navigate to the Compliance Activity Pre-Approval page
</p> 
This e-mail was sent from an automated system. PLEASE DO NOT REPLY. If you have any questions, please contact your CMS Compliance-In-Charge for assistance.'
   
WHERE EMAIL_INFO_ID = 4;

COMMIT; 

--************************************************************************************
UPDATE EMAIL_INFO SET body ='<br>  
[DATE]

<p>
This is to notify you that the pre-approval for the below compliance issue(s) has been rejected in the HPMS Compliance Activity Module by [USER_NAME]. Please contact [USER_NAME] if you have any questions.

<br/><br/>

[BATCH_ID]
[COMPLIANCE_ISSUE_ID] [TYPE OF ACTION] [PARENT_ORGANIZATION_NAME] [CONTRACT_ID]  
</p>
<br>
This e-mail was sent from an automated system. PLEASE DO NOT REPLY. If you have any questions, please contact your CMS Compliance-In-Charge for assistance.'
   
WHERE EMAIL_INFO_ID = 5;

-- ********************************************************************
COMMIT; 

UPDATE EMAIL_INFO SET body ='<br>  
[DATE]

<p>
This is to notify you that the below compliance issue(s) are available for edits in the HPMS Compliance Activity Module. Please contact [USER_NAME]  for specific instructions.

<br/><br/>

[BATCH_ID]
[COMPLIANCE_ISSUE_ID] [TYPE OF ACTION] [PARENT_ORGANIZATION_NAME] [CONTRACT_ID]  
</p>
<br>
This e-mail was sent from an automated system. PLEASE DO NOT REPLY. '
WHERE EMAIL_INFO_ID = 7;

COMMIT;

-- ******************************************************************** 

UPDATE EMAIL_INFO SET body ='<br>  
[DATE]

<p>
This is to notify you that the below compliance issue(s) may have been updated in the HPMS Compliance Activity Module, and requires pre-approval.

<br/><br/>
 
[BATCH_ID]
[COMPLIANCE_ISSUE_ID] [TYPE OF ACTION] [PARENT_ORGANIZATION_NAME] [CONTRACT_ID]  

<br><br> 
To pre-approve the compliance issue(s) in HPMS, please follow the instructions below.
<br>
--------------------------------
--------------------------------
<br>
INSTRUCTIONS
<br>
--------------------------------
--------------------------------
<br>
1. Go to this URL: https://hpms.cms.gov/app/login.aspx
<br>
2. Navigate to the Compliance Activity Pre-Approval page
</p> 
This e-mail was sent from an automated system. PLEASE DO NOT REPLY. If you have any questions, please contact your CMS Compliance-In-Charge for assistance.'
   
WHERE EMAIL_INFO_ID = 8;

COMMIT; 

--***********************************************************************************************

--************************************************************************************
UPDATE EMAIL_INFO SET body ='<br>  
[DATE]

<p>
This is to notify you that the letter approval for the below compliance issue(s) has been disapproved in the HPMS Compliance Activity Module by [USER_NAME] . Please contact [USER_NAME] if you have any questions.

<br/><br/>

[BATCH_ID]
[COMPLIANCE_ISSUE_ID] [TYPE OF ACTION] [PARENT_ORGANIZATION_NAME] [CONTRACT_ID]  
</p>
<br>
This e-mail was sent from an automated system. PLEASE DO NOT REPLY. '
   
WHERE EMAIL_INFO_ID = 9;

-- ********************************************************************
COMMIT; 

---- 
spool off;
