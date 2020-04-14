-- Here is some essential query for this blood bank management system project...
-- queries 



-- donar available for a particular patient
select donar_id,donar_name,blood_group,donar_contact_no from Donar where donar_id in (select donar_id from Donate where donar_id in (select donar_id from donar where blood_group in (select blood_group from Patient where patient_id=1001)) );

-- blood bank where desired blood available for a particular patient
select blood_bank_id,blood_bank_name,blood_bank_contact_no from BloodBank where blood_bank_id in (select blood_bank_id from Donate where donar_id in (select donar_id from donar where blood_group in (select blood_group from Patient where patient_id=1001)));

-- blood bank where desired blood available for a particular patient and the blood bank is located in patient's location 
select blood_bank_id,blood_bank_name,blood_bank_contact_no,blood_bank_address from BloodBank where blood_bank_id in (select blood_bank_id from Donate where donar_id in (select donar_id from donar where blood_group = (select blood_group from Patient where patient_id=1001)) ) and blood_bank_address in (select patient_address from Patient where patient_id=1001);

-- blood bank where desired blood available
select blood_bank_id,blood_bank_name,blood_bank_contact_no from BloodBank where blood_bank_id in (select blood_bank_id from Donate where donar_id in (select donar_id from donar where blood_group = 'A+'));

-- quantity of desired blood in a particular blood bank
select count(donate_id) as quantity_of_desired_blood from Donate where blood_bank_id = 1 and donar_id in (select donar_id from Donar where blood_group = 'A+');

-- shows the donar name who is donate in a particular blood_bank
select d.donar_name,b.blood_bank_name from Donar d,BloodBank b,Donate dd where dd.donate_id=10001 and d.donar_id in (select donar_id from Donate where donate_id = 10001) and b.blood_bank_id in (select blood_bank_id from Donate where donate_id = 10001);

-- shows all the available donar information whose blood group is same with patient blood group
select donar_name,donar_address,blood_group,patient_name from Donar natural join Patient;

-- shows all the important information donar and patient in which patient location and donar location is same and also patient and donar blood group is same.
select donar_name,donar_address,donar.donar_contact_no,donar.blood_group,patient_name,patient.blood_group,patient_address from Donar,Patient where donar.donar_address=patient.patient_address and donar.blood_group=patient.blood_group;

-- shows all the donar name,blood group,contact number for a particular blood bank
select donar_name,blood_group,donar_contact_no from donar,donate where donar.donar_id=donate.donar_id and blood_bank_id=1;

-- shows all donar information for specific blood group and specific location based
select * from donar,bloodbank where donar_address=blood_bank_address and donar.blood_group='A+';



---some simple queries is here--
select * from patient where patient_id=101;
select donar_name,donar_contact_no,blood_group from donar,patient where donar.blood_group=patient.blood_group;
select * from donar where donar_address='dhaka';




