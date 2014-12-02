Rails.application.routes.draw do
  get 'user/edit'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'user#start'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):

# do
#     resources :cart_item
#   end
resources :products do 
  collection do 
    post 'create_cart_item'
    get 'ajax_bought'
  end
end

# <<<<<<< HEAD
    resources :products 
      resources :cart do
        resources :cart_item 
      end
           resources :user 
   get 'user/end' => 'user#end'
  # post 'cart_item/calculation_price'=>'cart_item#calculation_price'
# =======
    # resources :cart 
    # resources :cart_item 
    # resources :user 
 # get 'usser/end' => 'user#end'
resources :user do 
  collection do 
    get 'start'
    post 'start_shopping'
  end
end

  resources :cart_item do 
     collection do 
      get 'update_count'
      post 'update_count'
    end
  end

# >>>>>>> c985d714fd78f8f88837d3b8c47d64995f649e59
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
