class Search < ApplicationRecord

  def search_orders
    orders = Order.all
    orders = orders.where(["description LIKE ?", "%#{keywords}%"]) if keywords.present?
    orders = orders.where(["status LIKE ?", status]) if status.present?
    orders = orders.where(["price >= ?", min_price]) if min_price.present?
    orders = orders.where(["price <= ?", max_price]) if max_price.present?
    return orders
  end
end
