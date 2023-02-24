json.extract! post, :id, :user_id, :title, :context, :private, :created_at, :updated_at
json.url post_url(post, format: :json)
