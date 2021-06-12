Rails.application.routes.draw do

  root to: "homes#top"
  devise_for :admins, controllers: {
    sessions: "admins/sessions"
  }

end
