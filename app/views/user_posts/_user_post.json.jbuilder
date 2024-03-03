json.extract! user_post, :id, :profile_id, :written_text, :media_location, :created_at, :updated_at
json.url user_post_url(user_post, format: :json)
