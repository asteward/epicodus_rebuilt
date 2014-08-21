Rails.application.routes.draw do
  match('/', {via: :get, to: 'lessons#index'})
end
