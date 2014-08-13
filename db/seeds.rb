if Store.count == 0
	puts "Create stores"

	for i in 1..20
		Store.create!(name: "Store #{i}", description: "This is the store #{i}", active: i%3==0)
	end
end

if Product.count == 0
	puts "Create products"

	Store.all.map{ |store|
		for i in 1..10
			Product.create!(name: "Product #{i}", description: "Description of product #{i}", price: 10*i, visible: i%2==0, store_id: store.id)
		end
	}
end

if Customer.count == 0
	puts "Create customers"

	for i in 1..60
		Customer.create!(name: "Customer #{i}", email: "customer#{i}@example.com", active: i%2==0)
	end
end

if Sales.count == 0
	puts "Create sales"

	i = 0
	Customer.all.map{ |customer|
		Product.all.map{ |product|
			i += 1

			Sales.create!(
				customer_id: customer.id,
				product_id: product.id,
				quantity: 1,
				sub_total: product.price,
				shipping_price: 4.99,
				tax: product.price*0.13,
				total: product.price + 4.99 + (product.price*0.13),
				status: i%3
			)
		}
	}
end

if Trend.count == 0
	puts "Create trends"

	Customer.all.map{ |customer|
		Product.all.map{ |product|
			Trend.create!(
				customer_id: customer.id,
				product_id: product.id
			)
		}
	}
end
