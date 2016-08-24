json.extract! employee, :id, :name, :password_digest, :created_at, :updated_at
json.url employee_url(employee, format: :json)