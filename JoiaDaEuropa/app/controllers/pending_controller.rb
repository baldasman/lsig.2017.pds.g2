class PendingController < ApplicationController

  def pending
    if current_user.role == 'admin'
      @orders = Order.where(:status => "pending")
    else
      @orders = Order.where(:status => "pending").where(:user_id => current_user.id)
    end
  end

end