select * from {{ref('joins')}}
where date_part(year, order_date) = 2021
order by order_date desc