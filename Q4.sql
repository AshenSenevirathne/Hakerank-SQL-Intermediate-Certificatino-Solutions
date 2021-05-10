select c.customer_name, ROUND(SUM(i.total_price), 6)
from customer c inner join invoice i on c.id = i.customer_id
group by i.total_price, c.customer_name
having  sum(i.total_price) <= (select avg(total_price)/100*25
                                    from invoice);