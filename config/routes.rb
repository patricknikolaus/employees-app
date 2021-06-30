Rails.application.routes.draw do
  get "/employees", controller: "employees", action: "index"
  post "/employees", controller: "employees", action: "create"
  get "/employees/:id", controller: "employees", action: "show"
  patch "/employees/:id" => "employees#update"
  delete "employees/:id" => "employees#destroy"

end
