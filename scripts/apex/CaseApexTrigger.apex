List<Case> newCase = new List<Case>();
for (Integer i = 0; i <205; i++) {
    case c= new case();
    c.Subject='There is a Bug';
    c.Description='Resolve it';
    c.Status='New';
    c.Origin= 'Web';
    newCase.add(c);
    
}
insert newCase;


List<Case> updateCases =[Select id, subject, status from case where status='New'];
for (case eachCase : updateCases) {
    eachCase.Status='Working';
    
}
update updateCases;