json.extract! post, :id, :name, :day, :amount, :left, :res, :master, :image, :created_at, :updated_at
json.url post_url(post, format: :json)
