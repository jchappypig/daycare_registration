json.array!(@waiting_lists) do |waiting_list|
  json.extract! waiting_list, :id, :child_name, :child_age, :parent_name, :email, :phone, :address, :postcode, :expect_join_time, :days_per_week
  json.url waiting_list_url(waiting_list, format: :json)
end
