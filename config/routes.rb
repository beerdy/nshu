Rails.application.routes.draw do
  devise_for :users
  get 'farmers/index'

  get 'job/index'

  get 'business/index'

  get 'set/index'

  get 'barbecue/index'

  get 'stake/index'

  resources :documents
  resources :specials
  get 'special/index'

  get 'service/index'

  resources :infos
  resources :products
  
  resources :galleries
  
  resources :sliders
  resources :contacts
  resources :facts
  mount Rich::Engine => '/rich', :as => 'rich'
  get 'about/index'

  resources :teams
  resources :pages
  resources :catalogs
  resources :groups
  resources :contents
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  get 'welcome/index'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'welcome#index'

  get '/about', to: 'pages#show', as: :about

  # необязательно
  # resources :groups, only: [:index, :show] do
  #   resources :products, only: [:index, :show]
  # end

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
