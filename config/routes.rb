Rails.application.routes.draw do
  devise_for :doctors
  root to: "homes#home"
  get "/trimming" => "homes#trimming"
  get "/hotel" => "homes#hotel"
  get "/information" => "homes#information"
  
 
  
  
  
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
