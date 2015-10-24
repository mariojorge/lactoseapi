json.product do
  json.id    @product.id
  json.title @product.title
  json.middle_price @product.middle_price
  json.created_at @product.created_at

  json.category do
    json.id    @product.category.id
    json.title @product.category.title
  end  

  json.locations @product.locations do |location|  
    json.id location.id
    json.title location.title
    json.address location.home_delivery ? location.address : "Entrega em domicilio"
    json.coordinate_x location.coordinate_x
    json.coordinate_y location.coordinate_y
  end
end