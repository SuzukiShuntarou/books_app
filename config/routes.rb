Rails.application.routes.draw do
  # ルートパスは最初に記載
  root 'users#index'
  # 勉強用
  get 'users/test', to: 'users#test', as:'namae_tuki'
  # devise用
  # get "users/show"
  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: 'users/sessions'
  }
  resources :books
  resources :users


  # devise_scope :user do
  #   root to: 'devise/registrations#new' # サインアップページをルートに設定
  # end

  # root to: 'books#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/*
  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest

  # Defines the root path route ("/")
  # root "posts#index"
end
