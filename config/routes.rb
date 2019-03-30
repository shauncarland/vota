Rails.application.routes.draw do

  scope :devise do
    devise_for :constituents, path: 'constituents', controllers: { sessions: "constituents/sessions" }
    devise_for :representatives, path: 'representatives'
  end

  namespace :api do
    namespace :v1 do
      resources :representatives, only: [:index, :show] do
        resources :representative_profile, only: [:index]
      end
    end
  end

  root to: "welcome#index"
end
