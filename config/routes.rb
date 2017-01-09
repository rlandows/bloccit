Bloccit::Application.routes.draw do
  resources :questions
  resources :advertisements

  resources :topics do
    resources :posts, except: [:index]
   end

  get 'about' => 'welcome#about'

  root 'welcome#index'
end
