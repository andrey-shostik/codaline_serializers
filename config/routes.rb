Rails.application.routes.draw do
  namespace :api do
    namespace :admin do
      resources :users
    end
    resources :articles
  end
end
