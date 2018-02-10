json.extract! news, :id, :title, :body, :source, :title_url, :image_url, :created_at, :updated_at
json.url news_url(news, format: :json)
