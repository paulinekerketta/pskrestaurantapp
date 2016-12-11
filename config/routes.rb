Rails.application.routes.draw do
 # get 'page/home'

  get 'page/contact'

  get 'page/about'

  get 'page/features'

  get 'page/faq'

  get 'page/login'

  resources :cashmeouts
  resources :driverslists

  root to 'page#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
