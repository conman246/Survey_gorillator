require 'faker'

@all_users = []
@all_surveys = []

25.times do 
	email = Faker::Internet.email 
	@all_users << User.create(email: email, password: "password")
end

25.times do 
	title = Faker::Name.title 
	user_id = rand(1..11)
	draft_status = true 
	@all_surveys << Survey.create(title: title, user_id: user_id, draft_status: draft_status)
end


user = User.create email: "awesomedude@gmail.com", password: "1234"

survey = Survey.create title: "first_survey", user: user, draft_status: nil
question = Question.create survey: survey, text: "first_question"


first_possible_answer = PossibleAnswer.create text: "yes", question: question 
second_possible_answer = PossibleAnswer.create text: "No", question: question 

chosen_answer = ChosenAnswer.create question: question, user: user, possible_answer: first_possible_answer
taken_survey = TakenSurvey.create survey: survey, user: user 