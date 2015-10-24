json.products @products do |product|  
  json.id    product.id
  json.title product.title
  json.middle_price product.middle_price

  json.category do
    json.id    product.category.id
    json.title product.category.title
  end  
end  