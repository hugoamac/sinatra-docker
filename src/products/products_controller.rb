class ProductsController < Sinatra::Base
	get '/products' do

		content_type :json
		status 200
		body Product.all.to_json
	end
	post '/product' do

		product = Product.new
		product.name = @body[:name]
		product.price = @body[:price]
		product.description = @body[:description]
		product.save
		
		content_type :json
		status 200
		body product.to_json
	end
	before do
	    if request.content_length.to_i > 0
	      request.body.rewind
	      @body = JSON.parse request.body.read, symbolize_names: true
	    end
    end
end