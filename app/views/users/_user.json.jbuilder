json.extract! user, :id, :email, :password, :country, :date_of_birth, :name, :surname, :photo, :created_at, :updated_at
json.url user_url(user, format: :json)
