Rails.application.routes.draw do
  root to: "homes#home"
  get "/trimming" => "homes#trimming"
  get "/hotel" => "homes#hotel"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
