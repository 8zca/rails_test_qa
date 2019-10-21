json.extract! subuser, :id, :name, :avatar_path, :created_at, :updated_at
json.url subuser_url(subuser, format: :json)
