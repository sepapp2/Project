json.array!(@hotels) do |hotel|
  json.extract! hotel, :id, :hotelname, :address, :website, :phone
  json.url hotel_url(hotel, format: :json)
end
