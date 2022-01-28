insert into {{source('emp_dept','source_table')}} select * from {{source('emp_dept','target_table')}}

select * from {{source('emp_dept','target_table')}}