json.extract! route, :id, :tour_agency_id, :user_id, :start_date, :start_end, :hotel_id, :cost, :place_id, :created_at, :updated_at
json.url route_url(route, format: :json)
