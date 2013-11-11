enable :sessions

get '/' do
  erb :index
end

get '/survey_list' do 
	
	erb :survey_list 
end 

post '/log_in' do 
	@user = User.find_by_email(params[:email])
	if @user && @user.authenticate(params[:password]) 
	session[:user_id] = @user.id
	redirect to('/user_portal')
	else
		redirect to('/')
	end
end

get "/logout" do 
	session.clear
	redirect to('/')
end

get '/signup' do
	erb :signup
end

post '/signup' do
	# create user with data given
		@user = User.create(email: params[:email], 
											password: params[:password],
											password_confirmation: params[:password])
	redirect to('/user_portal')
end

get '/user_portal' do
	erb :user_portal
end

get '/take_survey/:id' do
	@survey = Survey.find(params[:id])
	erb :take_survey
end

post '/take_survey' do
	# binding.pry
	# p params
	params[:answers].each do |answer_id, question_id|
		ChosenAnswer.create(question_id: question_id.to_i, user: User.find(session[:user_id]), possible_answer: PossibleAnswer.find(answer_id.to_i))

	end    
      
	redirect to('/user_portal')
end

get '/create_survey' do 
	if request.xhr?
		erb :create_survey, :layout => false 
	else 
		erb :create_survey
	end
end # xhr? returns true if the request is made via ajax. I want it to return false if it was an ajax request so I use the bang.

post '/create_survey' do
	@survey = Survey.create(title: params[:title], user_id: session[:user_id])
	redirect to('/user_portal')
end

