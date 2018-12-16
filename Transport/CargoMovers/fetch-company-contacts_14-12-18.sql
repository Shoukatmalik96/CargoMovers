
Select * from Tranporter t 
inner join Contacts  cts
 on t.TransporterID = cts.TransporterID  
 where cts. CompanyID = 9

select * from Company comp 
inner join Contacts cts 
on comp.CompanyID = cts.CompanyID  where cts.TransporterID = 2


