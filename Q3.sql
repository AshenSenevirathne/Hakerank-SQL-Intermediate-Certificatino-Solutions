select p.sku, product_name
from PRODUCT p left outer join INVOICE_ITEM i on p.id = i.product_id
where i.invoice_id IS NULL