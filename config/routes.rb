Rails.application.routes.draw do
  devise_for :constituents, path: 'constituents'
  # eg. http://localhost:3000/constituents/sign_in

  devise_for :represenatives, path: 'represenatives'
  # eg. http://localhost:3000/represenatives/sign_in

  root to: "welcome#index"
end
