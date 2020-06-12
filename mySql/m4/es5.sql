use me;

describe regions; 
describe coders;

-- Nome del team e nome dei programmatori associati
select t.name, c.first_name, c.last_name
from teams t, team_coder tc, coders c
where t.team_id = tc.team_id and c.coder_id = tc.coder_id;

select t.name, c.first_name, c.last_name
from teams t join team_coder tc using(team_id)
join coders c using(coder_id);

-- Inserimento
insert into coders(coder_id, first_name, last_name, hire_date, salary)
values(201, "Maria", "Rossi", "2020-06-12", 5000);
insert into coders(coder_id, first_name, last_name, hire_date, salary)
values(202, "Franco", "Bianchi", now(), 4500);

-- Cambiare nome Maria -> Mariangela
update coders
set first_name = "Mariangela"
where first_name = "Maria";

-- +500 ai salari < 6000
update coders
set salary = salary + 500
where salary < 6000;

-- Eliminare Franco Bianchi
delete from coders
where first_name = "Franco" and last_name = "Bianchi";

commit;
