Rails.application.routes.draw do
  get 'notices/new'
  get 'notices/index'
  get 'notices/edit'
  get 'notices/show'
  root to: "homes#home"
  get "/trimming" => "homes#trimming"
  get "/hotel" => "homes#hotel"
  get "/information" => "homes#information"
  
  resources :docotrs, only: [:index] 
  devise_for :doctors  ,controllers: {
    sessions: 'doctors/sessions'
  }
  
  resources :notices
  
  
  
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
