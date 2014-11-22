class LineItem < ActiveRecord::Base
  belongs_to :product
  belongs_to :cart

  def total_price
    product.price * quantity
  end
  def price
    product.price
  end 

  def kill
    current_item = LineItem.find(params[:id])
    current_item.destroy
  end 
end
