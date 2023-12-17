Rails.application.routes.draw do
  get 'bookmarks/index'
  get 'bookmarks/new'
  get 'bookmarks/create'
  get 'bookmarks/destroy'
  root to: "lists#index"
  resources :lists, except: [:edit, :update] do
    resources :bookmarks, only: [:new, :create]
    resources :reviews, only: :create
  end
end
