json.extract! profile, :id, :name, :surname, :birthday, :note, :phone_number, :email_address, :created_at, :updated_at
json.url profile_url(profile, format: :json)
