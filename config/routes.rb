Rails.application.routes.draw do
  #get 'welcome/index'

  devise_for :users

  authenticated :user do
    root 'welcome#index'
  end

  unauthenticated :user do
    devise_scope :user do
      get '/' => 'devise/sessions#new'
    end
  end
end
