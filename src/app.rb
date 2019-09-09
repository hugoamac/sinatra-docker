require 'sinatra'
require 'sinatra/base'
require 'active_record'
require 'sinatra/activerecord'
require 'json'
require_relative '../environment'
require_relative '../autoload'

class App < Sinatra::Base

	register Sinatra::ActiveRecordExtension

	use ProductsController
	use PostsController

	get '/' do
		response = { :message => 'API REST WITH SINATRA RUBY'}
		content_type :json
		status 200
		body response.to_json
	end

end