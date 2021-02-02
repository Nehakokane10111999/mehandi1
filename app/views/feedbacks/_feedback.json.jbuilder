json.extract! feedback, :id, :name, :description, :created_at, :updated_at
json.url feedback_url(feedback, format: :json)
