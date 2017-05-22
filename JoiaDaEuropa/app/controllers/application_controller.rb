class ApplicationController < ActionController::Base
  include Pundit

  protect_from_forgery with: :exception

  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized
  private
  def user_not_authorized
  flash[:notice] = "Voce n~ao tem permiss~ao para fazer esta acc~ao"
    redirect_to(request.referrer || root_path)
  end
end
