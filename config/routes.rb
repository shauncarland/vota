Rails.application.routes.draw do
  devise_for :constituents, path: 'constituents', controllers: { sessions: "constituents/sessions" }
  # eg. http://localhost:3000/constituents/sign_in

  devise_for :represenatives, path: 'represenatives', controllers: { sessions: "represenatives/sessions" }
  # eg. http://localhost:3000/represenatives/sign_in

  root to: "welcome#index"
end
