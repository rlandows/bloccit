Bloccit::Application.routes.draw do
  resources :questions
  resources :advertisements

  resources :topics do
    resources :posts, except: [:index]
   end

   resources :users, only: [:new, :create]

   post 'users/confirm' => 'users#confirm'

  get 'about' => 'welcome#about'

  root 'welcome#index'
end
