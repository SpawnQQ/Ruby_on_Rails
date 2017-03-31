json.extract! article, :id, :titulo, :cuerpo, :contador_visitas, :created_at, :updated_at
json.url article_url(article, format: :json)
