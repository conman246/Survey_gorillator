

user = User.create email: "awesomedude@gmail.com", password: "1234"

survey = Survey.create title: "first_survey", user: user, draft_status: nil

question = Question.create survey: survey, text: "first_question"


first_possible_answer = PossibleAnswer.create text: "yes", question: question 
second_possible_answer = PossibleAnswer.create text: "No", question: question 

chosen_answer = ChosenAnswer.create question: question, user: user, possible_answer: first_possible_answer

taken_survey = TakenSurvey.create survey: survey, user: user 