-- 시간대별로 입양이 몇건이나 발생했는지 조회/ 시간대 순 정렬
with recursive rc as(
           select 0 as hour
           union all
           select hour+1 from rc where hour<23)
  
  select rc.hour HOUR, count(ANIMAL_ID) COUNT
  from rc 
  left join ANIMAL_OUTS a on rc.hour=hour(a.datetime)
  group by rc.hour