Rails.application.routes.draw do
<<<<<<< HEAD
  
  get 'vicino/index'
  #devise_for :users, controllers: { registrations: 'users/registrations' }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :locali
  resources :citta

  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks',registrations: 'users/registrations' }

 get '/admin_page', to: 'admin_page#new' 
 get '/users/admin_page', to: 'admin_page#new' 
 get 'admin_page/up', to: 'admin_page#up'
 get 'admin_page/loc', to: 'admin_page#loc'
 get 'admin_page/del', to: 'admin_page#del'
 get 'admin_page/suspend', to: 'admin_page#suspend'
 get '/profilo', to: 'profilo#index'


 devise_scope :user do
  authenticated :user do
    root 'citta#index', as: :authenticated_root
  end

  unauthenticated do
    root 'devise/sessions#new', as: :unauthenticated_root
  end
  
end

=======
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :home
  resources :cities
>>>>>>> 015c8ea324514c24ae5084ddfb046d7fc20b71c3
end
