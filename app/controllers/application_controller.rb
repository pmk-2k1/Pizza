class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  private
  # DEVISE
  before_action :configure_permitted_parameters, if: :devise_controller?


  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_in) do |user|
      user.permit(:phone_number, :password)
    end

    devise_parameter_sanitizer.permit(:sign_up) do |user|
      user.permit(:full_name, :phone_number, :address, :password)
    end

    devise_parameter_sanitizer.permit(:account_update) do |user|
      user.permit(:full_name, :phone_number, :address, :password, :password_confirmation, :current_password)
    end
  end

  # private

  # Overwriting the sign_out redirect path method
  # def after_sign_out_path_for(resource_or_scope)
  #   root_path
  # end

  # def after_sign_in_path_for(resource_or_scope)
  #   # feed_path(current_user)
  #   root_path
  # end
end
