Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  get 'welcome/index'
  root 'welcome#index'
  get 'welcome/gallery'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
