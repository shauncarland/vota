class ApplicationController < ActionController::Base
  # protect_from_forgery with: :exception
  devise_group :person, contains: [:represenative, :constituent]
  # before_action :authenticate_person! # Ensure someone is logged in
end
