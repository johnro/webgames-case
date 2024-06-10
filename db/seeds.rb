# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# Replace seed data
Quiz.all.destroy_all

quiz = Quiz.create(
  title: "Coffee Quiz", 
  description: "This quiz is about coffee", 
  image: "/images/coffee-quiz.png",
)

questions = [
  { content: "Is coffee good for you?", answer: true },
  { content: "Is the earth round", answer: true },
  { content: "Is the sky blue", answer: true },
  { content: "Is the sun hot", answer: true },
  { content: "Is the moon made of cheese", answer: false },
  { content: "Is the ocean salty", answer: true },
  { content: "Is the grass green", answer: true },
  { content: "Is the sky purple", answer: false }
]

questions.each do |question|
  quiz.questions.create(question)
end

scores = [
  { points: 10, player: "Fred" },
  { points: 20, player: "Sally" },
  { points: 30, player: "Bob" },
]

scores.each do |score|
  quiz.scores.create(score)
end