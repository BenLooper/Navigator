Rails.application.routes.draw do
  resources :texts
  resources :choices
  resources :prompts
  resources :projects

  root 'projects#home'
end
