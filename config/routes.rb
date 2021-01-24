Rails.application.routes.draw do
  root to: "homes#home"
  get "/trimming" => "homes#trimming"
  
  resources :notices
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
