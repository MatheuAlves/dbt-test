select 
od.order_id, od.product_id, od.unit_price, od.quantity, pd.product_name, pd.supplier_id, pd.category_id,
od.unit_price * od.quantity as total,
(pd.unit_price * od.quantity) - total as discount
from {{source('sources','order_details')}} od
left join {{source('sources','products')}} pd on (od.product_id = pd.product_id)