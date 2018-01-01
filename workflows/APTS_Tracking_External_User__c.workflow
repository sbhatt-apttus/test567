<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>External_User_Email_Sender</fullName>
        <description>External_User_Email_Sender</description>
        <protected>false</protected>
        <recipients>
            <field>APTS_Email__c</field>
            <type>email</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Apttus__ApttusTempEmailTemplates/External_User_Email_Sender</template>
    </alerts>
    <rules>
        <fullName>Email alert on external user creation</fullName>
        <actions>
            <name>External_User_Email_Sender</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>APTS_Tracking_External_User__c.APTS_Email__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <description>Email alert on external user creation</description>
        <triggerType>onCreateOnly</triggerType>
    </rules>
</Workflow>
