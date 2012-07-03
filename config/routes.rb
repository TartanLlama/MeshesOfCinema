MeshesOfCinema::Application.routes.draw do
  resources :movements
  resources :genres
  resources :directors

  mount Ckeditor::Engine => '/ckeditor'

  devise_for :admins
  
  resources :films

  match "/reviews", to: 'reviews#index'
  match "/articles", to: 'articles#index'
  match "/admins", to: 'admins#index'
  match "/mini_articles", to: 'mini_articles#index'
  match "/themes", to: 'themes#index'
  match "/elements", to: 'elements#index'
  match "/countries", to: 'countries#index'
  match "/tags", to: 'tags#index'
  match "/mini_reviews", to: 'mini_reviews#index'
  match "/mini_reviews/new", to: 'mini_reviews#new'
  match "/directors", to: 'directors#index'
  match "/about", to: 'standard#about'
  match "/contact", to: 'standard#contact'
  root to: 'standard#index'

  #SEARCHING
  match "/search/films", to: 'films#search'

  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
