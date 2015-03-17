Rails.application.routes.draw do
  get 'tweets/new'

  get 'tweets/create'
  resources :tweets, only: [:new, :create]
  #devise_for :users, :controllers => { :omniauth_callbacks => "callbacks" }
  # devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks"}
  #devise_for :users, class_name: 'FormUser', controllers: { :omniauth_callbacks => "users/omniauth_callbacks"}
  devise_for :users, :controllers => { omniauth_callbacks: 'users/omniauth_callbacks', registrations: 'registrations'  }
devise_scope :user do
  get 'sign_up_foundation', to: 'devise/registrations#new'
end

  resources :campaigns

  #get "select_campaigns", to: 'complete_profile#select_campaigns'
  get "complete_profile", to: 'complete_profile#index'
  patch "complete_profile", to: 'complete_profile#save'
  get '/', to: 'defaults#index'
  get '/prueba', to: 'defaults#prueba'
  



  match '/contacts',     to: 'contacts#new',             via: 'get'
  resources "contacts", only: [:new, :create]

  

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
