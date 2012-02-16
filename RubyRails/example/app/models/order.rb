class Order < ActiveRecord::Base
  belongs_to :client
  has_many :order_items
  has_many :products, :through :order_items

  def total
    order_items.sum &:total
  end

end
