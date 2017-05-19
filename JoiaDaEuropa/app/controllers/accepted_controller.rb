class AcceptedController < ApplicationController

  def accepted
    if current_user.role == 'admin'
      @orders = Order.where(:status => 'accepted')
    else
      @orders = Order.where(:status => 'accepted').where(:user_id => current_user.id)
    end
  end

  def conclude_order

    @order = Order.find_by(id: params[:id])

    if @order.nil?
      flash[:error] = 'Order not found'
      redirect_to pending_path and return
    end

    @order.status = 'concluded'

    if @order.save
      redirect_to concluded_path
    else
      flash[:error] = @order.errors.messages
      redirect_to pending_path
    end

  end

end