class AcceptedController < ApplicationController

  def accepted
    if current_user.role == 'admin'
      @orders = Order.where(:status => 'accepted')
    else
      @orders = Order.where(:status => 'accepted').where(:user_id => current_user.id)
    end
  end

end