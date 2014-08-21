Rails.application.routes.draw do
  match('/', {via: :get, to: 'lessons#index'})
  match('/', {via: :post, to: 'lessons#create'})

end
