Rails.application.routes.draw do
  root to: "homes#top"
  resources :schools do
   resources :school_comments, only: [:create, :destroy]
  end
   resources :contacts, only: [:new, :create]
   get 'search', to: 'search#search'
   post 'contacts/confirm', to: 'contacts#confirm', as: 'confirm'
   post 'contacts/back', to: 'contacts#back', as: 'back'
   get 'done', to: 'contacts#done', as: 'done'
  devise_for :admins, controllers: {
    sessions: "admins/sessions"
  }
  namespace :admins do
    resources :schools
    resources :contacts, only: [:index]
    resources :school_comments, only: [:index]
    get '/search', to: 'search#search'
  end

end
