-- nome: Nelson Felipe Andrade Araújo
-- matrícula: 552179
use aula_db; -- 1 acessando o DB

show tables; 

select * from department;

select Dname from department; -- 2 Lista o nome de todos os departamentos

select Dnumber from department where Dname = 'research'; -- 3 identificando a quantidade de funcionarios do departamento Research

insert into department
values ('datascience', 7, 123456789, '2007-06-19'); -- 4 inclui o departamento datascience

select * from employee;

insert into employee -- 5 Adiciona um funcionário no departamento datascience
values('Paches', 'F', 'Depe', 454545453, '2011-09-22', '69 One, Piece TX', 'M', 1, 123456789, 7); 
insert into employee -- 5 Adiciona outro funcionário no departamento datascience
values('Malenia', 'B', 'Mikela', 121212123, '2000-12-05', '7 Deku, Tree TX', 'F', 5000, 123456789, 7); 

update employee
set salary = salary + (salary *  23.5/100); -- 6 Aumentando o salário de todos os funcionários em 23.5%

update employee -- 7 Altera o endereço dos funcionários de administração para Itapajé CE
set Address = '12 Alameda, Itapajé CE'
where Dno = 4;
