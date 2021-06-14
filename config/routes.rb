Rails.application.routes.draw do

  root to: "homes#top"
  devise_for :admins, controllers: {
    sessions: "admins/sessions"
  }
  namespace :admins do
    resources :schools
  end

end
