Rails.application.routes.draw do
  get 'draft/index' => "draft#index"
  post 'draft/create' => "draft#create"
  get 'draft/new' => "draft#new"
  get 'draft/:id' => "draft#show"
  get 'draft/:id/edit' => "draft#edit"
  post 'draft/:id/update' => "draft#update"
  post "draft/:id/destroy" => "draft#destroy"
 # post 'draft/:id/upload' => "draft#upload"
  
  get 'menue/new' => "menue#new"
  get 'menue/show/:id' => "menue#show"
  get 'menue/edit/:id' => "menue#edit"
  post 'menue/create' => "menue#create"
  post "menue/back" => "menue#back"

  get "logout" => "login#logout"
  post "login/confirm" => "login#confirm"
  post "login/create" => "login#create"
  get "login/entrance" => "login#entrance"
  get "login/form" => "login#form"
  get "login/new" => "login#new"
  
  get "lesson/index" => "lesson#index"
  
  post "user/:id/update" => "user#update"
  get "user/:id/edit" => "user#edit"
  get "user/new" => "user#new"
  get "user/index" => "user#index"
  get "user/:id" => "user#mypage"
  

  get "lesson" => "post#new"
  get "profile" => "post#profile"

  get "/" => "home#top"
  get "/about" => "home#about"
  
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root "welcome#index"

  # Example of regular route:
  #   get "products/:id" => "catalog#view"

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get "products/:id/purchase" => "catalog#purchase", as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get "short"
  #       post "toggle"
  #     end
  #
  #     collection do
  #       get "sold"
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
  #       get "recent", on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post "toggle"
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
