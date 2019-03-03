Rails.application.routes.draw do
  devise_for :constituents, path: 'constituents', controllers: { sessions: "constituents/sessions" }
  # eg. http://localhost:3000/constituents/sign_in
# <<<<<<< HEAD
#
# =======

  devise_for :representatives, path: 'representatives', controllers: { sessions: "representatives/sessions" }
  # eg. http://localhost:3000/representatives/sign_in

# >>>>>>> change-represenative-to-represenatives_WORKING
  root to: "welcome#index"
end
