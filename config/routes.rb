Rails.application.routes.draw do
  # not RESTful because I'm lazy
  get  "new"    => "pages#new"
  post "/"      => "pages#create", as: "create" # so that we can use `create_path`
  root "pages#index"
end
