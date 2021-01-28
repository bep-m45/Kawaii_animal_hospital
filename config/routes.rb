Rails.application.routes.draw do
  root to: "homes#home"
  get "/trimming" => "homes#trimming"
  get "/hotel" => "homes#hotel"
  
  resources :docotrs, only: [:index] 
  devise_for :doctors  ,controllers: {
    sessions: 'doctors/sessions'
  }
  
  namespace :doctors do
    resources :notices 
    resources :categories
  end
  
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
