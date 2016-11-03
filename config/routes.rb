Rails.application.routes.draw do
  get 'recipes/search'

  get 'recipes/show'

  get 'recipes/index'

  get 'recipes/new'

  get 'recipes/create'

  get 'recipes/edit'

  get 'recipes/update'

  get 'recipes/destroy'

	root 'recipe_searches#index'
  get 'recipe_searches/index' => 'recipe_searches#index', as: 'list'

  get 'recipe_searches/show' => 'recipe_searches#show', as: 'show'

  get 'recipe_searches/new' => 'recipe_searches#new'

    # get 'products/search' => 'products#search', as: 'search_products'




  get 'recipe_searches/recipe_search' => 'recipe_searches#search', as: 'search'

  get 'recipe_searches/create' => 'recipe_searches#create'

  get 'recipe_searches/edit' => 'recipe_searches#edit'

  get 'recipe_searches/update' => 'recipe_searches#update'

  get 'recipe_searches/destroy'


  get 'users/index' => 'users#index'

  get 'users/show' => 'users#show'

  get 'users/new' => 'users#new'

  post 'users/create' => 'users#create'

  get 'users/edit' => 'users#edit'

  put 'users/update' => 'users#update'

  delete 'users/destroy' => 'users#destroy'

#SESSIONS ROUTES

	resources :sessions


  get "/auth/:provider/callback" => 'sessions#create'

  get 'logout' => 'sessions#destroy'

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
