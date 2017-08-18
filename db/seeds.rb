# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Poll.destroy_all
Question.destroy_all
Response.destroy_all
AnswerChoice.destroy_all

u1 = User.create!(username: "user1")
u2 = User.create!(username: "user2")
u3 =User.create!(username: "user3")

p1 = Poll.create!(title: "poll1", user_id: u1.id)
p2 = Poll.create!(title: "poll2", user_id: u1.id)
p3 = Poll.create!(title: "poll3", user_id: u2.id)

q1 = Question.create!(body: "no", poll_id: p1.id)
q2 = Question.create!(body: "no no", poll_id: p2.id)
q3 = Question.create!(body: "no no no", poll_id: p2.id)

ac1 = AnswerChoice.create!(body: "yes", question_id: q1.id)
ac2 = AnswerChoice.create!(body: "no", question_id: q1.id)

ac3 = AnswerChoice.create!(body: "yes", question_id: q2.id)
ac4 = AnswerChoice.create!(body: "no", question_id: q2.id)

ac5 = AnswerChoice.create!(body: "yes", question_id: q3.id)
ac6 = AnswerChoice.create!(body: "no", question_id: q3.id)

r1 = Response.create!(user_id: 1, answer_choice_id: ac1.id)
r2 = Response.create!(user_id: 2, answer_choice_id: ac1.id)
r3= Response.create!(user_id: 2, answer_choice_id: ac2.id)
