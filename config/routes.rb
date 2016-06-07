Rails.application.routes.draw do
  root to: "violations#index"

  namespace :api, defaults: {format: :json} do
    namespace :v1 do
      resources :violations, only: [:index]
    end
  end
end
