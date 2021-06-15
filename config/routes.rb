Rails.application.routes.draw do

  root to: "homes#top"
  resources :schools do
   resources :school_comments, only: [:create, :destroy]
  end
  devise_for :admins, controllers: {
    sessions: "admins/sessions"
  }
  namespace :admins do
    resources :schools
  end

end
