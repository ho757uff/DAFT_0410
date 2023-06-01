use publications;

-- CHALLLENGE#1
select
pa.au_id as "AUTHOR ID",
pa.au_lname as "LAST NAME", 
pa.au_fname as "FIRST NAME", 
pt.title as "TITLE", 
pti.pub_name as "PUBLISHER"

from publications.authors as pa

inner join publications.titleauthor as pta
	on pta.au_id = pa.au_id
inner join publications.titles as pt
	on pta.title_id = pt.title_id
inner join publications.publishers as pti
	on pt.pub_id = pti.pub_id
    ;
    
-- CHALLLENGE#2
select
pa.au_id as "AUTHOR ID",
pa.au_lname as "LAST NAME", 
pa.au_fname as "FIRST NAME", 
pti.pub_name as "PUBLISHER",
count(*) as num_of_titles

from publications.authors as pa

inner join publications.titleauthor as pta
	on pta.au_id = pa.au_id
inner join publications.titles as pt
	on pta.title_id = pt.title_id

    
    group by 1,2,3,4
    ;

-- CHALLLENGE#3
select
pa.au_id as "AUTHOR ID",
pa.au_lname as "LAST NAME", 
pa.au_fname as "FIRST NAME", 
SUM(ps.qty) as "TOTAL"

from publications.authors as pa

inner join publications.titleauthor as pta
	on pta.au_id = pa.au_id
inner join publications.titles as pt
	on pta.title_id = pt.title_id
inner join publications.sales as ps
	on ps.title_id = pt.title_id

group by 1,2,3
order by 4 desc
limit 3
;


-- CHALLLENGE#4
select
pa.au_id as "AUTHOR ID",
pa.au_lname as "LAST NAME", 
pa.au_fname as "FIRST NAME", 
SUM(ps.qty) as "TOTAL"

from publications.authors as pa

left join publications.titleauthor as pta
	on pta.au_id = pa.au_id
left join publications.titles as pt
	on pta.title_id = pt.title_id
left join publications.sales as ps
	on ps.title_id = pt.title_id

group by 1,2,3
order by 4 desc
;



