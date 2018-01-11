Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'bobs_palindromes#home'
  post '/check', to: 'bobs_palindromes#input_check'
end
