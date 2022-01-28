with source_tab as (

    select * from {{source('emp_dept','source_table')}}
),
final as (
    merge into {{source('emp_dept','target_table')}} t1 using source_tab t2 on t1.id = t2.id
    when matched then update set qty = t2.qty
    when not matched then insert (id, item,qty) values (t2.id, t2.item,t2.qty);
)