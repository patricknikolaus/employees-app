Rails.application.routes.draw do
  get "/employees", controller: "employees", action: "index"
  post "/employees", controller: "employees", action: "create"
end
