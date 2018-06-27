Rails.application.routes.draw do
  resources :answers
  resources :questions
  resources :paragraphs
  resources :passages
  resources :sections
  resources :tests
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
