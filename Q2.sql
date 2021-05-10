select ci.city_name, pr.product_name, ROUND(SUM(ii.line_total_price), 2) as tot
from city ci, customer cu, invoice inv, invoice_item ii, product pr
where ci.id = cu.city_id and cu.id = inv.customer_id and inv.id = ii.invoice_id and ii.product_id = pr.id
group by ci.city_name, pr.product_name
order by tot desc, ci.city_name, pr.product_name