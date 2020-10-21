Rails.application.routes.draw do
  get 'welcome/index'
  #adding search feature-->
  resources :articles do
  	resources :reviews
  end
  #root 'welcome#index'
end
