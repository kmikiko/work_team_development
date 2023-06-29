Rails.application.routes.draw do
  resources :blogs, only: [:new, :create, :show]
end
