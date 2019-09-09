class PostsController < Sinatra::Base
	get '/posts' do

		content_type :json
		status 200
		body Post.all.to_json
	end
	post '/post' do

		post = Post.new
		post.title = @body[:title]
		post.resume = @body[:resume]
		post.description = @body[:description]
		post.save
		
		content_type :json
		status 200
		body post.to_json
	end
	before do
	    if request.content_length.to_i > 0
	      request.body.rewind
	      @body = JSON.parse request.body.read, symbolize_names: true
	    end
    end
end