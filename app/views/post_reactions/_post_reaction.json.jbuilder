json.extract! post_reaction, :id, :post_id, :profile_id, :reaction_id, :created_at, :updated_at
json.url post_reaction_url(post_reaction, format: :json)
