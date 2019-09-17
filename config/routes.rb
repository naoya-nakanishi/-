Rails.application.routes.draw do
  get 'blogs/index'
  get 'blogs/show'
  get 'blogs/new'
  get 'blogs/create'
  get 'blogs/edit'
  get 'blogs/update'
  get 'blogs/destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
