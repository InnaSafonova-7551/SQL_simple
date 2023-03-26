/*ЗАДАЧА 1 
 Вывести коды всех принтеров отдела Services, цена которых начинается от 270 долларов */

select printer."code" from department d
join printer on printer.code = d.id
where price >= '270' 
and d."department" = 'Services';

/*ЗАДАЧА 2 
 Найти ноутбук с самым большим экраном и вывести его код и к какому
отделу он принадлежит */

select l.screen as big_screen, l.code, d.department
from product p 
join laptop l 
on l.model = p.model
join department d 
on d.id = p.department_id
order by l.screen desc 
limit 1;

/*ЗАДАЧА 3
 Посчитать сколько ПК имеют минимальную скорость */

select pc.code, 
min(speed) as min_speed
from pc group by pc.code
order by min_speed asc limit 2; 
