Dir.glob("./src/**/*_model.rb").sort.each do |file|
	require file
end

Dir.glob("./src/**/*_controller.rb").sort.each do |file|
	require file
end