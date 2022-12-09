Rails.application.routes.draw do
  root "pages#index"
  get "/flash/:msg", to: "pages#flashinfo"

  get  "/post/create", to: "post#new"
  post "/post/create", to: "post#create"

  get "/post", to: "post#view"
  post "/post", to: "post#addcomment"
  get  "/post/search", to: "post#find"
end
