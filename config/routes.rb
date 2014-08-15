Rails.application.routes.draw do
  get 'trend/index'

  get 'trend/show'

  get 'stors/index'

  get 'stors/show'

  get 'stors/details'

  get 'stors/sales'

  get 'stors/products'

  get 'customers/index'

  get 'customers/show'

  get 'customers/details'

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

  resources :customers
  resources :stors

  #clientes
  get '/clientes', to: 'customers#index'
  get 'clientes/:id/detalles', to: 'customers#details', as: :details

  

  #tiendas
  get '/stors', to: 'stors#index'
  get 'stors/:id/details', to: 'stors#details', as: :store_details
  get 'stors/:id/products', to: 'stors#products', as: :store_products

  #visitas
  get 'product/:id/trends', to: 'trend#index', as: :trends
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
