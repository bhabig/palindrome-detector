Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'bobs_dromes#home'
  post '/check', to: 'bobs_dromes#input_check'
end
