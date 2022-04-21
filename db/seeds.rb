# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

user = User.create!(email: Faker::Internet.email)
5.times.each do |_n|
  step = OnBoardingStep.create!(title: Faker::Types.rb_string)
  5.times.each do |_n|
    question = step.questions.create!(title: Faker::Name.unique.name, mark: 2, is_published: true)
    question.question_answers.create!(user_id: user.id, answer: Faker::Name.unique.name)
  end
end
