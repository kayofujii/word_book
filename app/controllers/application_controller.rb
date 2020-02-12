class ApplicationController < ActionController::Base
  #ユーザーネームを自由に変更可能
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
    devise_parameter_sanitizer.permit(:sign_in, keys: [:name])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name])
    # devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:name, :password, :password_confirmation) }
    # devise_parameter_sanitizer.for(:sign_in) { |u| u.permit(:name, :password, :remember_me) }
  end
end
