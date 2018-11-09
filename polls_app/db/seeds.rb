# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user1 = User.create(username: 'alice')
user2 = User.create(username: 'bob')
user3 = User.create(username: 'carol')
user4 = User.create(username: 'derek')
user5 = User.create(username: 'earl')
user6 = User.create(username: 'frank')

# Poll 1
poll1 = Poll.create(title: "Colors", author: user1)

question1 = Question.create(text: "What color is the sky?", poll_id: poll1.id)
question2 = Question.create(text: "What color is grass?", poll_id: poll1.id)
question3 = Question.create(text: "What color is orange?", poll_id: poll1.id)

answer_choice1_1 = AnswerChoice.create(text: "Blue", question_id: question1.id)
answer_choice1_2 = AnswerChoice.create(text: "Green", question_id: question1.id)
answer_choice1_3 = AnswerChoice.create(text: "Red", question_id: question1.id)

answer_choice2_1 = AnswerChoice.create(text: "Blue", question_id: question2.id)
answer_choice2_2 = AnswerChoice.create(text: "Green", question_id: question2.id)
answer_choice2_3 = AnswerChoice.create(text: "Red", question_id: question2.id)

answer_choice3_1 = AnswerChoice.create(text: "Blue", question_id: question3.id)
answer_choice3_2 = AnswerChoice.create(text: "Green", question_id: question3.id)
answer_choice3_3 = AnswerChoice.create(text: "Orange", question_id: question3.id)

response1 = Response.create(responder_id: user1.id, answer_id: answer_choice1_1.id)
response2 = Response.create(responder_id: user1.id, answer_id: answer_choice2_2.id)
response3 = Response.create(responder_id: user1.id, answer_id: answer_choice3_3.id)

# Poll 2
poll2 = Poll.create(title: "Fingers", author: user2)

question4 = Question.create(text: "How many fingers am I holding up?", poll_id: poll2.id)
question5 = Question.create(text: "How many fingers does a polar bear have?", poll_id: poll2.id)

answer_choice4_1 = AnswerChoice.create(text: "5", question_id: question4.id)
answer_choice4_2 = AnswerChoice.create(text: "9", question_id: question4.id)

answer_choice5_1 = AnswerChoice.create(text: "7", question_id: question5.id)
answer_choice5_2 = AnswerChoice.create(text: "11", question_id: question5.id)

response4 = Response.create(responder_id: user1.id, answer_id: answer_choice4_1.id)
response5 = Response.create(responder_id: user1.id, answer_id: answer_choice5_1.id)


# Poll 3
poll3 = Poll.create(title: "Ages", author: user6)

question6 = Question.create(text: "How old am I?", poll_id: poll3.id)
question7 = Question.create(text: "How old is the Universe?", poll_id: poll3.id)

answer_choice6_1 = AnswerChoice.create(text: "Less than 30", question_id: question6.id)
answer_choice6_2 = AnswerChoice.create(text: "More than 30", question_id: question6.id)

answer_choice7_1 = AnswerChoice.create(text: "Infinity", question_id: question7.id)
answer_choice7_2 = AnswerChoice.create(text: "14 billion years", question_id: question7.id)

response6 = Response.create(responder_id: user1.id, answer_id: answer_choice6_1.id)
response7 = Response.create(responder_id: user1.id, answer_id: answer_choice7_2.id)

response8 = Response.create(responder_id: user2.id, answer_id: answer_choice6_2.id)
response9 = Response.create(responder_id: user2.id, answer_id: answer_choice7_2.id)

response10 = Response.create(responder_id: user3.id, answer_id: answer_choice6_1.id)
response11 = Response.create(responder_id: user3.id, answer_id: answer_choice7_1.id)

response12 = Response.create(responder_id: user4.id, answer_id: answer_choice6_1.id)
response13 = Response.create(responder_id: user4.id, answer_id: answer_choice7_2.id)

response14 = Response.create(responder_id: user5.id, answer_id: answer_choice6_2.id)
response15 = Response.create(responder_id: user5.id, answer_id: answer_choice7_1.id)

response16 = Response.create(responder_id: user6.id, answer_id: answer_choice6_2.id)
response17 = Response.create(responder_id: user6.id, answer_id: answer_choice7_2.id)

