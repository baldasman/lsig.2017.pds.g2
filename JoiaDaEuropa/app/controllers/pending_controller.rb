class PendingController < ApplicationController

  def pending
    if current_user.role == 'admin'
      @orders = Order.where(:status => "pending")
    else
      @orders = Order.where(:status => "pending").where(:user_id => current_user.id)
    end
  end

  def accept_order

    @order = Order.find_by(id: params[:id])

    if @order.nil?
      flash[:error] = 'Order not found'
      redirect_to pending_path and return
    end

    @order.status = 'accepted'

    if @order.save
      redirect_to accepted_path
    else
      flash[:error] = @order.errors.messages
      redirect_to pending_path
    end
  end

  def cancel_order

    @order = Order.find_by(id: params[:id])

    if @order.nil?
      flash[:error] = 'Order not found'
      redirect_to pending_path and return
    end

    @order.status = 'canceled'

    if @order.save
      redirect_to canceled_path
    else
      flash[:error] = @order.errors.messages
      redirect_to pending_path
    end
  end

end