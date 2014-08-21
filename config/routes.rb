Rails.application.routes.draw do
  match('/', {via: :get, to: 'lessons#index'})
  match('/', {via: :post, to: 'lessons#create'})
  match('/lessons/:id', {via: :get, to: 'lessons#show'})
end
