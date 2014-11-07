json.array!(@rooms) do |room|
  json.extract! room, :id, :roomnumber, :roomtype, :roomdescription, :hotelname
  json.url room_url(room, format: :json)
end
