class CanceledController < ApplicationController

  def canceled
    if current_user.role == 'admin'
      @orders = Order.where(:status => 'canceled')
    else
      @orders = Order.where(:status => 'canceled').where(:user_id => current_user.id)
    end
  end

end