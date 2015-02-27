Rails.application.routes.draw do
  
  resources :searches

  resources :traditional_route_videos

  resources :boulder_route_videos

  resources :sport_route_videos

  resources :grades

  get '/', to: 'static#home'
  get 'sport_routes/get_sport_routes_from_wall/:wall_id', to: 'sport_routes#get_sport_routes_from_wall'
    
  resources :users
  resources :boulder_route_photos
  resources :traditional_route_photos
  resources :sport_route_photos
  resources :wall_photos
  resources :crags
  resources :territories
  resources :areas
  resources :regions
  resources :states
  resources :boulder_routes
  resources :traditional_routes
  resources :sport_routes
  resources :walls

  get 'home', to: 'static#home'
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  
  get '/photos', to: 'static#photos'
  get 'wall_photos/index/:id', to: 'wall_photos#index'
  get 'wall_photos/new/:id', to: 'wall_photos#new'

  get 'regions/data/getJson', to: 'regions#getJson'
  get 'states/data/getJson', to: 'states#getJson'
  get 'areas/data/getJson', to: 'areas#getJson'
  get 'territories/data/getJson', to: 'territories#getJson'
  get 'crags/data/getJson', to: 'crags#getJson'
  get 'walls/data/getJson', to: 'walls#getJson'

  get 'sport_routes/data/getJson', to: 'sport_routes#getJson'
  get 'boulder_routes/data/getJson', to: 'boulder_routes#getJson'
  get 'traditional_routes/data/getJson', to: 'traditional_routes#getJson'

  get 'wall_photos/data/getJson', to: 'wall_photos#getJson'
  get 'sport_route_photos/data/getJson', to: 'sport_route_photos#getJson'
  get 'boulder_route_photos/data/getJson', to: 'boulder_route_photos#getJson'
  get 'traditional_route_photos/data/getJson', to: 'traditional_route_photos#getJson'
    
    
  
  
  get 'regions/data/getJson/:id', to: 'regions#getJson'
  get 'states/data/getJson/:id', to: 'states#getJson'
  get 'areas/data/getJson/:id', to: 'areas#getJson'
  get 'territories/data/getJson/:id', to: 'territories#getJson'
  get 'crags/data/getJson/:id', to: 'crags#getJson'
  get 'walls/data/getJson/:id', to: 'walls#getJson'

  get 'sport_routes/data/getJson/:id', to: 'sport_routes#getJson'
  get 'boulder_routes/data/getJson/:id', to: 'boulder_routes#getJson'
  get 'traditional_routes/data/getJson/:id', to: 'traditional_routes#getJson'

  get 'wall_photos/data/getJson/:id', to: 'wall_photos#getJson'
  get 'sport_route_photos/data/getJson/:id', to: 'sport_route_photos#getJson'
  get 'boulder_route_photos/data/getJson/:id', to: 'boulder_route_photos#getJson'
  get 'traditional_route_photos/data/getJson/:id', to: 'traditional_route_photos#getJson'
    
    

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
