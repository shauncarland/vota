Rails.application.routes.draw do
  devise_for :constituents, path: 'constituents', controllers: { sessions: "constituents/sessions" }
  # eg. http://localhost:3000/constituents/sign_in
  
  root to: "welcome#index"
end
