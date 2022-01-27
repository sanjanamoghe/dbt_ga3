with emp_source as (

    select * from {{source('emp_dept','employee')}}
),

employee_info as (
    select emp_id,emp_name,{{source('emp_dept','department')}}.dept_id,{{source('emp_dept','department')}}.dept_name
    from emp_source
    join {{source('emp_dept','department')}} using (dept_id)
)
select * from employee_info