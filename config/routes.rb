Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "/fortune_path", controller: "my_examples", action: "fortune_method"
  get "/lottery_path", controller: "my_examples", action: "lottery_method"
  get "/visit_path", controller: "my_examples", action: "visit_method"
end
