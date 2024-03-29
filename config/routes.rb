# StaticPagesController is a Ruby class, but because it inherits from ApplicationController the behavior of its methods is specific to Rails: when visiting the URL /static_pages/home, Rails looks in the Static Pages controller and executes the code in the home action, and then renders the view (the V in MVC from Section 1.3.3) corresponding to the action. In the present case, the home action is empty, so all visiting /static_pages/home does is render the view.
Rails.application.routes.draw do

  get 'sessions/new'

  root 'static_pages#home'
  get 'about'    => 'static_pages#about'
  get 'school'   => 'static_pages#school'
  get 'business' => 'static_pages#business'  
  get 'individual' => 'static_pages#individual'
  get 'blog' => 'static_pages#blog'  
  get 'contact' => 'static_pages#contact'
  get 'signup' => 'users#new'
  get 'login' => 'sessions#new'
  delete 'logout' => 'sessions#destroy'
  delete 'close'    => 'sessions#end_session' if Rails.env.test?
  resources :users
  resources :sessions, only: [:new, :create, :destroy]
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
