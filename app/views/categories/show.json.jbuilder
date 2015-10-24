json.category do
  json.id @category.id
  json.title @category.title

  json.products @category.products do |product|  
    json.id    product.id
    json.title product.title
  end  
end