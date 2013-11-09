

user = User.create email: "awesomedude@gmail.com", password: "1234"
survey = Survey.create title: "first_survey", user: user, draft_status: nil
question = Question.create survey: survey, text: "first_question"


first_possible_answer = PossibleAnswer.create text: "yes", question: question 
second_possible_answer = PossibleAnswer.create text: "No", question: question 

chosen_answer = ChosenAnswer.create question: question, user: user, possible_answer: first_possible_answer

taken_survey = TakenSurvey.create survey: survey, user: user 


# ============================ Lunchtime Survey =================================

user2 = User.create email: "dandydanny@gmail.com", password: "password"

survey2 = Survey.create title: "Office Lunchtime Foodstuffs Survey", user: nil, draft_status: nil

question = Question.create survey: survey2, text: "It is lunch time. Are you hungry?"
PossibleAnswer.create text: "Yes. Stuff my face with food.", question: question
PossibleAnswer.create text: "No, not at all.", question: question

question = Question.create survey: survey2, text: "How much money do you have?"
PossibleAnswer.create text: "I wipe my ass with $100 bills.", question: question
PossibleAnswer.create text: "Around $5.", question: question
PossibleAnswer.create text: "I have none.", question: question

question = Question.create survey: survey2, text: "Which one of these following restaurants appeals to you?"
PossibleAnswer.create text: "Subway. I hear Alex replaced Jared as their spokesperson.", question: question
PossibleAnswer.create text: "Habanero Baja Grill. Chipotle is too long of a walk.", question: question
PossibleAnswer.create text: "Chipotle.", question: question
PossibleAnswer.create text: "Potbelly.", question: question
PossibleAnswer.create text: "Jamba Juice.", question: question
PossibleAnswer.create text: "McDonalds.", question: question
PossibleAnswer.create text: "Protein Bar.", question: question

question = Question.create survey: survey2, text: "What do you value the most?"
PossibleAnswer.create text: "Food quality.", question: question
PossibleAnswer.create text: "Speed.", question: question
PossibleAnswer.create text: "Low price.", question: question

question = Question.create survey: survey2, text: ""
PossibleAnswer.create text: "Protein.", question: question
PossibleAnswer.create text: "Carbs.", question: question
PossibleAnswer.create text: "Greens.", question: question

question = Question.create survey: survey2, text: "Will you be willing to pick up the order for the entire office?"
PossibleAnswer.create text: "Absolutely.", question: question
PossibleAnswer.create text: "Only if you buy my lunch.", question: question
PossibleAnswer.create text: "I'm not your slave. No.", question: question





# question = Question.create survey: survey2, text: ""
# PossibleAnswer.create text: "", question: question
# PossibleAnswer.create text: "", question: question
# PossibleAnswer.create text: "", question: question
