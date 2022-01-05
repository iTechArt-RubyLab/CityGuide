# frozen_string_literal: true

json.extract! entity_profile, :id, :name, :surname, :age, :note, :contact_information, :title_company,
              :min_price, :min_time, :price_one_hour, :price_two_hours,
              :start_work, :end_work, :type_of_service, :created_at, :updated_at
json.url entity_profile_url(entity_profile, format: :json)
