Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :fisbums
    end
  end
  namespace :api do
    namespace :v1 do
      resources :friends
    end
  end
  namespace :api do
    namespace :v1 do
      resources :requests
    end
  end
  namespace :api do
    namespace :v1 do
      resources :users
    end
  end
  namespace :api do
    namespace :v1 do
      get '/users/search_user/:id', to: 'users#search_user'
    end
  end

  namespace :api do
    namespace :v1 do
    get '/users/search/:id', to: 'users#search'
    end
  end

  namespace :api do
    namespace :v1 do
    post '/fisbums/get_fisbum', to: 'fisbums#get_fisbum'
    end
  end
  # namespace :api do
  #   namespace :v1 do
  #     post '/friends/unfriend', to: 'friends#unfriend'
  #   end
  # end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
