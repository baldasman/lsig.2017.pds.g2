class ConcludedController < ApplicationController

  def concluded
    if current_user.role == 'admin'
      @orders = Order.where(:status => 'concluded')
    else
      @orders = Order.where(:status => 'concluded').where(:user_id => current_user.id)
    end
  end

end