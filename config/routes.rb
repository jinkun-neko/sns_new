Rails.application.routes.draw do
  get 'sessions/new'
  get 'users/new'
  root 'static_pages#home'
  get  '/help',    to: 'static_pages#help'
  get  '/about',   to: 'static_pages#about'
  get  '/contact', to: 'static_pages#contact'
  get  '/signup',  to: 'users#new'
  get    '/login',   to: 'sessions#new' #ログイン用のページ
  post   '/login',   to: 'sessions#create'#ログイン用
  delete '/logout',  to: 'sessions#destroy' #ログアウト用
  resources :users
end