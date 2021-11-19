Rails.application.routes.draw do
  root to: 'lists#index'

  resources :lists do
    resources :bookmarks, only: %i[new create destroy]
  end

  resources :bookmarks, only: %i[destroy edit update]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

# config/routes.rb
Rails.application.routes.draw do
  root to: 'articles#index'
  resources :articles, except: :index
  # ⚠️ don't forget to replace `articles_path` by `root_path` on all the "Back" `link_to`
end
