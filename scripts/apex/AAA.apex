USER===FirstName, LastName
Contact===Parent of USER
Account (agency)==Parent of Contact===Agency Name, BureauName

PermissionSet===??

List<Account> listAcc= [select Id, Agency_Name, Bureau_Name from Account];
List<User> listUser = [select Id, FirstName,LastName, PublicGroup__c, (select FirstName,LastName from ContactId) from User where PublicGroup__c !="];

List<PermissionSet> perList=(select Id, name from PermissionSet where name like 'FRP%');

List<User> listUser = [SELECT Id, FirstName,LastName, 
                        Contact.FirstName, Contact.LastName,
                        Contact.Account.Agency_Name__c, Contact.Account.Bureau_Name__c
                        FROM User 
                        WHERE id in (SELECT Id, PermissionSetId, PermissionSet.Name, PermissionSet.ProfileId, PermissionSet.Profile.Name, AssigneeId, Assignee.Name FROM PermissionSetAssignment WHERE PermissionSet.Name like 'frp%')
                        LIMIT 50000];
SELECT Id, PermissionSetId, PermissionSet.Name, PermissionSet.ProfileId, PermissionSet.Profile.Name, AssigneeId, Assignee.Name FROM PermissionSetAssignment WHERE PermissionSet.Name like 'frp%'

List<PermissionSet> permsetList = [SELECT Id,Name FROM PermissionSet WHERE Name Like 'FRP%'];//alll FRP
Set<String> perIds= new Set<String>();
for(PermissionSet p :permsetList){
    if(!perIds.contains(p.name)){
        perIds.add(p.name);
    }
}
system.debug(perIds.size());

Set<string>userIds= new Set<string>();//USER 
List<PermissionSetAssignment> ps= [select Id, AssigneeId From PermissionSetAssignment WHERE PermissionSet.name =: perIds and isActive= true and assignee.profile.name != 'System Administrator' and assignee.associated_communities_c= 'FRP'];
FOR (PermissionSetAssignment permAssignment:ps){
    if(!userIds.contains(permAssignment.AssigneeId)){
        userIds.add(permAssignment.AssigneeId);}
    }
}

system.debug(userIds.size());

Set<string> grpIds = new Set<String>();
for(GroupMember gm : [Select Id, group.id, group.name, group.type FROM GroupMember where (UserOrGroupId =:userIds AND group.type= 'Regular')]){
if(!grpIds.contains(gm.group.name)){
    grpIds.add(gm.group.name);
    system.debug(gm.group.name);
}
}