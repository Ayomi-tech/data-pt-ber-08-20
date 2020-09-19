SELECT * FROM olist.marketing_qualified_leads;

-- 1. From the marketing_qualified_leads table, find the earliest and latest first_contact_date.
SELECT MIN(first_contact_date) AS  earlist, MAX(first_contact_date) AS latest FROM olist.marketing_qualified_leads;
-- 2. From the marketing_qualified_leads table, find the top 3 most frequent origin types for all first_contact_date entries in 2018.
SELECT COUNT(first_contact_date), origin FROM olist.marketing_qualified_leads 
GROUP BY origin ORDER BY COUNT(first_contact_date)DESC LIMIT 3;
-- 3. From the marketing_qualified_leads table, find the first_contact_date with the highest number of mql_id entries and state the number of entries on that date.
SELECT COUNT(mql_id), first_contact_date FROM olist.marketing_qualified_leads 
GROUP BY first_contact_date ORDER BY COUNT(mql_id) DESC LIMIT 1;
-- 4. From the products table, find the name and count of the top 2 product category names.
SELECT COUNT(product_id), product_category_name FROM olist.products 
GROUP BY product_category_name ORDER BY COUNT(product_id) DESC LIMIT 2;
-- 5. From the products table, find the product_category_name with the highest recorded product weight in grams.
SELECT product_weight_g, product_category_name FROM olist.products 
 ORDER BY product_weight_g DESC LIMIT 1;
-- 6. From the products table, find the product_category_name with the greatest sum of dimensions including length, height and width in centimeters.
SELECT (product_length_cm + product_height_cm + product_width_cm) AS sum_cm, product_category_name FROM olist.products 
  ORDER BY sum_cm DESC LIMIT 1 ;
 -- 7. From the order_payments table, find the payment_type with the greatest number of order_id entries and the count of that payment type.
  SELECT COUNT(order_id), payment_type FROM olist.order_payments GROUP BY payment_type ORDER BY COUNT(order_id) DESC LIMIT 1 ;
  -- 8. From the order_payments table, find the highest payment value for an individual order_id.
  SELECT MAX(payment_value) FROM olist.order_payments;
  -- 9. From the sellers table, find the 3 seller states with the greatest number of distinct seller cities.
  SELECT COUNT(DISTINCT seller_city), seller_state FROM olist.sellers 
  GROUP BY seller_state ORDER BY COUNT(DISTINCT seller_city)DESC LIMIT 3;
  
 