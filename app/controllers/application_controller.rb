class ApplicationController < ActionController::Base
  # protect_from_forgery with: :exception
  devise_group :person, contains: [:representative, :constituent]
  # before_action :authenticate_person! # Ensure someone is logged in
  #

  before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:website, :phone_number])
  end
end
