Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: 'registrations' }
  resources :projects do
    resources :tasks
  end
  root "projects#index"
end
