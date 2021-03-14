select EXTRACT(year from visit_date)::integer from visits

select extract(year from MAX(visit_date))::integer from visits


select extract(year from MIN(visit_date))::integer from visits