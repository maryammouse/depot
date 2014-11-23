xml.instruct!
xml.products do
    xml.title @product.title
    xml.image_url @product.image_url
    xml.description @product.description
    xml.price @product.price

  @product.orders.each do |order|
    xml.order do
      xml.name order.name
      xml.address order.address
      xml.email order.email
      xml.pay_type order.pay_type
      xml.created_at order.created_at
      xml.updated_at order.updated_at
    end 
  end 
end
