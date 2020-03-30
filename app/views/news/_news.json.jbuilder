json.extract! news, :id, :name, :description, :link, :image, :created_at, :updated_at
json.url news_url(news, format: :json)
