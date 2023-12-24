select * from {{ref('joins')}}
where date_part(year, order_date) = 2020
order by order_date desc