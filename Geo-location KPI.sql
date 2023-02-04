
select /*+parallel(a,8)*/  LAST_CELL_ID, count(*), sum (ORIGINAL_DUR/60) 
from orvetl.FCT_MOB_eric_msc  partition(date_20221226)a
where EVENT_TYPE_KEY != '2'
--and  generated_full_date between '01-dec-22' and '31-dec-22'
and rownum = 10
group by last_cell_id 


edit incident_2022

commit;


------



--orvetl.FCT_MOB_eric_msc a

select /*+parallel(a,8)*/  *  from orvetl.FCT_MOB_eric_msc a 

select last_cell_id, COUNT (*),sum (original_dur/60) Duration, sum(billable_pulse)
from orvetl.FCT_MOB_eric_msc partition(date_20221201)a where EVENT_TYPE_KEY != '2' 
and last_cell_id in ('53013')
group by last_cell_id
order by count(*)



