class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

  def after_sign_in_path_for(developer)
    brands_path
  end
  
  def after_sign_in_path_for(tenant)
    spaces_path
  end

  protected

  def configure_permitted_parameters
    added_attrs = [ :company, :name, :work_location, :email, :phone_number, :password, :password_confirmation]
    devise_parameter_sanitizer.permit :sign_up, keys: added_attrs
    devise_parameter_sanitizer.permit :account_update, keys: added_attrs
    devise_parameter_sanitizer.permit :sign_in, keys: added_attrs
  end

end
