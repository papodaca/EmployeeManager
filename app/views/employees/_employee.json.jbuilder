json.extract! employee, :id, :name, :email, :ssn, :address, :manager_id, :organization_id, :created_at, :updated_at
json.url employee_url(employee, format: :json)
