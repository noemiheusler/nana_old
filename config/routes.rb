Rails.application.routes.draw do
  devise_for :users, :controllers => { :registrations => :registrations}
  root to: 'users#discover'

  resources :kids, except: [:index, :show]

  resources :event, except: [:index] do
    resources :participants, only: [:destroy, :new, :create]
  end

  get "discover", to: "users#discover", as: :discover
  get "dashboard", to: "users#dashboard", as: :dashboard
  get "mylist", to: "events#mylist", as: :mylist
  get "mynanas", to: "users#mynanas", as: :mynanas
end
