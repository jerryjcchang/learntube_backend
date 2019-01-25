Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
      resources :users, :videos, :notes
      patch '/users/:user_id/videos/add', to: 'users#add_video'
      delete '/users/:user_id/videos/remove', to: 'users#remove_video'
      get   '/notes/:user_id/:video_id', to: 'notes#get_notes_by_user_video'
    end
  end
end
