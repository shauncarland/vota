class ApplicationController < ActionController::Base
  include DeviseTokenAuth::Concerns::SetUserByToken
  # protect_from_forgery with: :exception
  before_action do
    # binding.pry
    # :authenticate_representative!
  end

  # binding.pry
  devise_group :person, contains: [:representative, :constituent]
  # before_action :authenticate_representative!, except: [:create] # Ensure someone is logged in

  # protect_from_forgery with: :null_session
  before_action :configure_permitted_parameters, if: :devise_controller?
  protect_from_forgery

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:website, :phone_number, :first_name, :last_name])
  end
end
