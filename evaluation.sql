select id , first_name , last_name from Employee where id_team is null 

select Employee.id , Employee.first_name , Employee.last_name from Employee left join Leave 
on Employee.id = Leave.id_employee where Leave.id_employee is null

select Leave.id , Leave.start_date , Leave.end_date , Employee.id , Employee.first_name , Employee.last_name ,
Team.name
from Leave inner join Employee on Employee.id = Leave.id_employee inner join Team on 
Team.id = Employee.id_team 

select contract_type , count(id) from Employee group by contract_type

select count(Employee.id) from Employee inner join Leave on Leave.id_employee = Employee.id where 
Leave.start_date <= current_date and Leave.end_date >= current_date

select Employee.id , Employee.first_name , Employee.last_name , Team.name  from Employee 
inner join Leave on Leave.id_employee = Employee.id inner join Team on 
Team.id = Employee.id_team where Leave.start_date <= current_date and Leave.end_date >= current_date




