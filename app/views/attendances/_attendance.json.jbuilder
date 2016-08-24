json.extract! attendance, :id, :employee_id, :customer_id, :date, :duration, :created_at, :updated_at
json.url attendance_url(attendance, format: :json)