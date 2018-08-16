Rails.application.routes.draw do
  devise_for :users
  get 'welcome/index'
  
  resource :posts
  resources :images
  
  root to: 'welcome#index'

  namespace 'api' do
    namespace 'v1' do
      post 'auth_user' => 'authentication#authenticate_user'
    end
  end
 
end
