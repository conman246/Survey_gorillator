get '/' do
  # Look in app/views/index.erb
  erb :index
end

get '/survey_list' do 
	# ask instructor about conventional way to name routes. 
	erb :survey_list 
end

