Rails.application.routes.draw do
  match('/', {via: :get, to: 'lessons#index'})
  match('/', {via: :post, to: 'lessons#create'})
  match('/lessons/:id', {via: :get, to: 'lessons#show'})
  match('/lessons/:id/edit', {via: :get, to: 'lessons#edit'})
  match('/lessons/:id', {via: [:patch, :put], to: 'lessons#update'})
  match('/lessons/:id', {via: :delete, to: 'lessons#destroy'})
  match('/sections', {via: :get, to: 'sections#index'})
  match('/sections', {via: :post, to: 'sections#create'})
  match('/sections/:id', {via: :get, to: 'sections#show'})
  match('/sections/:id/edit', {via: :get, to: 'sections#edit'})
  match('/sections/:id', {via: [:patch, :put], to: 'sections#update'})
  match('/sections/:id', {via: :delete, to: 'sections#destroy'})
end
