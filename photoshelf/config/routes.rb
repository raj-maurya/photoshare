Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
resources :posts

  root 'posts#index'
    devise_for :users, :controllers => { registrations: 'registrations' }
  get '/new'=> 'posts#new'

  resources :posts do
    resources :comments
  end

end
