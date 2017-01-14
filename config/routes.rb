Bloccit::Application.routes.draw do
  resources :questions
  resources :advertisements

  resources :topics do
    resources :posts, except: [:index]
   end

   resources :posts, only: [] do
 # #5
     resources :comments, only: [:create, :destroy]
   end

   resources :users, only: [:new, :create]

   resources :sessions, only: [:new, :create, :destroy]

   post 'users/confirm' => 'users#confirm'

  get 'about' => 'welcome#about'

  root 'welcome#index'
end
