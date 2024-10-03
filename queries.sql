-- query for fetching all function name
select proname from pg_proc where pronamespace= (select oid from pg_namespace where nspname = 'schema_name')

-- query to fetch the function 
select pg_get_functiondef(p.oid) as function_def from pg_proc p join pg_namespace n on p.pronamespace = n.oid where
n.nspname ='schema_name' and p.proname = 'function_name'