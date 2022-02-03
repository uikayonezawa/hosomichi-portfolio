Rails.application.routes.draw do

  devise_for :users
    root  'projects#index'
    
    get 'projects' => 'projects#index'
    
    resources :newinfos do
      resources :comments, only: [:create]
    end
    
    resources :users, only: [:index, :show]
    
    resources :papers do
    collection do
      get 'search'
      end
    end
  
    resources :members
    
    resources :sitemaps, only: [:index]
  
  
end
