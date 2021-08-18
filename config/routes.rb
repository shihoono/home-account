Rails.application.routes.draw do

  devise_scope :user do
    root "users/sessions#new"
    get '/users/sign_out' => 'devise/sessions#destroy'
  end

  devise_for :users, :controllers => {
    sessions: 'users/sessions'
  }

  get 'reports/index'
  get 'reports/show'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
