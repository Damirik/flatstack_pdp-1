Rails.application.routes.draw do
  resource :feedback, only: %i(new create)

  devise_for :users, controllers: { registrations: "users/registrations" }
  root to: "pages#home"
end
