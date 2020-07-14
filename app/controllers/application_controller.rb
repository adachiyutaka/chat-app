class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  #before_action :move_to_index
  before_action :configure_permitted_parameters, if: :devise_controller?
	
	protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  end
  
  private
  # def move_to_index
  #   redirect_to new_user_registration_path unless user_signed_in?
  # end
end