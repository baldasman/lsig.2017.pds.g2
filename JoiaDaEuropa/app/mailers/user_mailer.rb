class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.canceled_email.subject
  #

  def customer_new_order_email(user, order)
    @user = user
    @order = order
    mail to: @user.email, subject: "Joia da Europa - Nova Encomenda"
  end

  def admin_new_order_email(user, order)
    @user = user
    @order = order
    mail to: 'gabriel_alberto2010@hotmail.com', subject: "Aviso de Nova Encomenda"
  end

  def accepted_email(user, order)
    @user = user
    @order = order
    mail to: @user.email, subject: "Joia da Europa - Encomenda Aceita"
  end

  def canceled_email(user, order)
    @user = user
    @order = order
    mail to: @user.email, subject: "Joia da Europa - Encomenda Cancelada"
  end

  def concluded_email(user, order)
    @user = user
    @order = order
    mail to: @user.email, subject: "Joia da Europa - Encomenda Concluida"
  end




end
