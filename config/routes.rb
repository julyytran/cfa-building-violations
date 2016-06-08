Rails.application.routes.draw do
  root to: "categories#index"

  namespace :api, defaults: {format: :json} do
    namespace :v1 do
      resources :categories, only: [:index]
    end
  end
end
