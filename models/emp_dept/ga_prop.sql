with final as (
select 119667831 as Profile_Id, 'au_convatec Australia' as Property_Name 
union all
select 239188686 as Profile_Id, 'br_ConvaTec Brazil' as Property_Name 
union all
select 133547147 as Profile_Id, 'cn_ConvaTec China' as Property_Name 
union all
select 124845087 as Profile_Id, 'co_ConvaTec Columbia' as Property_Name )
select * from final