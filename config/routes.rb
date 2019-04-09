Rails.application.routes.draw do
  mount_devise_token_auth_for 'Representative', at: '/v1/auth/representatives'

  # scope :devise do
  #   devise_for :constituents, path: 'constituents', controllers: { sessions: "constituents/sessions" }
  #   devise_for :representatives, path: 'representatives'
  # end

  namespace :api do
    namespace :v1 do
      resources :representatives, only: [:index, :show] do
        resources :representative_profiles, only: [:index, :new, :create]
      end
    end
  end

  root to: "welcome#index"
end
