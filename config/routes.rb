Rails.application.routes.draw do
  devise_for :constituents
  devise_for :represenatives
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: "welcome#index"
end
