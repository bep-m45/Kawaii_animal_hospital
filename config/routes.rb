Rails.application.routes.draw do
  root to: "homes#home"
  get "/trimming" => "homes#trimming"
  get "/hotel" => "homes#hotel"
  get "/information" => "homes#information"
  
  resources :docotrs, only: [:index] 
  devise_for :doctors  ,controllers: {
    sessions: 'doctors/sessions'
  }
  
  
  
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
