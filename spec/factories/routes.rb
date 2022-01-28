FactoryBot.define do
  factory :route do
    tour_agency { nil }
    user { nil }
    start_date { "2022-01-28" }
    start_end { "2022-01-28" }
    hotel { nil }
    cost { "9.99" }
    place { nil }
  end
end
