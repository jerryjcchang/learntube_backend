Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
      resources :users, :videos
      patch '/users/:user_id/videos/add', to: 'users#add_video'
      delete '/users/:user_id/videos/remove', to: 'users#remove_video'
    end
  end
end
