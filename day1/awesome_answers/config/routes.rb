Rails.application.routes.draw do

  # This sets the homepage. the helpers are root_path and root_url
  root 'welcome#index'
  # jeff-h4: This could do EVERYTHING for questions
  #   resources :questions
  
  #This will match a GET request to "/hello" url
  # it will invoke the index method( which is called action)
  # with in WelcomeController which is located in app/controllers folder"
  #get({"/hello" => welcome#index"
  # route     |    controller | Action
  get '/hello' => 'welcome#index'
  get '/contact' => 'contact#index'
  post "/contact" => "contact#create"

  # This will match any GET request to a url "/questions/new" to the Questions
  # controller and new action within that controller
  # Adding the as: :new_question option enables us to have a handy URL helper
  # method that we can use in the views and controllers. The method in this
  # case will be new_question_path or new_question_url
  get "/questions/new" => "questions#new", as: :new_question # changes path name questions_new_path -> new_question_path
  post "/questions" => "questions#create"#, as: :questions
  get "questions/:id" => "questions#show", as: :question
  get "/questions" => "questions#index"

  # Rails convention to edit question
  get "/questions/:id/edit" => "questions#edit", as: :edit_question
  patch "/questions/:id" => "questions#update"
  delete "/questions/:id" => "questions#destroy"

  get "/subscribe" => "subscribe#index"

  post "/subscribe" => "subscribe#create"
  # Alternate ways to write this
  #get "/subscribe/index"
  #post "/subscribe/create"

  # This will match any url /hello/something with GET request
  # With the :as option, the URL helper will be whatever you put
  # in there, appended with _path or _url
  # When linking internally, you can use either., but preferably path
  # When providing the link externally, you must use URL
  get "/hello/:name" => "welcome#hello", as: :greet

  # 2 parameters
  get "/hello/:name/:city" => "welcome#hello", as: :full_greeting

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
