json.extract! quiz, :id, :created_at, :updated_at, :title, :description, :image, :questions
json.url quiz_url(quiz, format: :json)
