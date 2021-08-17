Rails.application.routes.draw do

  devise_for :users
    root  'projects#index'
    
    get 'projects' => 'projects#index'
     
    resources :newinfos 
    resources :members
    resources :papers
    
    get 'users/:id' => 'users#show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
