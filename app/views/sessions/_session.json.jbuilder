json.extract! session, :id, :create, :created_at, :updated_at
json.url session_url(session, format: :json)