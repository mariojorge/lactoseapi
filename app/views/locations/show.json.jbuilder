json.location do
  json.id            @location.id
  json.title         @location.title
  json.address       @location.address
  json.coordinate_x  @location.coordinate_x
  json.coordinate_y  @location.coordinate_y
  json.home_delivery @location.home_delivery
  json.phone         @location.phone
end