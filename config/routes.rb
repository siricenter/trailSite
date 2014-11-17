Rails.application.routes.draw do
  
  resources :boulder_route_photos

  resources :traditional_route_photos

  resources :sport_route_photos

  resources :wall_photos

  get 'regions/getJson', to: 'regions#getJson'
  get 'states/getJson', to: 'states#getJson'
  get 'areas/getJson', to: 'areas#getJson'
  get 'territories/getJson', to: 'territories#getJson'
  get 'crags/getJson', to: 'crags#getJson'
  get 'walls/getJson', to: 'walls#getJson'

  get 'sport_routes/getJson', to: 'sport_routes#getJson'
  get 'boulder_routes/getJson', to: 'boulder_routes#getJson'
  get 'traditional_routes/getJson', to: 'traditional_routes#getJson'

  get 'sport_route_photos/getJson', to: 'sport_route_photos#getJson'
  get 'boulder_route_photos/getJson', to: 'boulder_route_photos#getJson'
  get 'traditional_route_photos/getJson', to: 'traditional_route_photos#getJson'

  resources :crags

  resources :territories

  resources :areas

  resources :states

  resources :regions

  resources :boulder_routes

  resources :traditional_routes

  resources :sport_routes

  resources :walls

  #admin
  scope :admin do
    
  get '/', to: 'static#dashboard', as: :dashboard

  end


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
