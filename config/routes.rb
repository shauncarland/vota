Rails.application.routes.draw do

  scope :devise do
    devise_for :constituents, path: 'constituents', controllers: { sessions: "constituents/sessions" }
    devise_for :representatives, path: 'representatives'
  end

  scope module: "api" do
    scope module: "v1" do
      resources :representatives, only: [:index, :show] do
        resources :representative_profiles, only: [:index, :new, :create]
      end
    end
  end

  root to: "welcome#index"
end
