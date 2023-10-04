create function production.tf_getProducts()
returns @returnTable table (
	product_id varchar(10),
	product_name varchar(500),
	brand_name varchar(500),
	category_name varchar(500),
	model_year varchar(200),
	list_price varchar(200)
)
as begin
	insert @returnTable
	select 
		products.product_id,
		products.product_name,
		brands.brand_name,
		categories.category_name,
		products.model_year,
		products.list_price
	from production.products products
	inner join production.brands brands
		on products.brand_id = brands.brand_id
	inner join production.categories categories 
		on products.category_id = categories.category_id;

	return
end;