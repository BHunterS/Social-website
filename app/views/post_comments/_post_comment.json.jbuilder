json.extract! post_comment, :id, :post_id, :profile_id, :comment_text, :created_at, :updated_at
json.url post_comment_url(post_comment, format: :json)
