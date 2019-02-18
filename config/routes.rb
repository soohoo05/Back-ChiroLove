Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/map', to: 'chiropractors#map'
  get '/chiropractors/more', to: 'chiropractors#more'
  get '/chiropractors/coords', to: 'chiropractors#coords'
  resources :chiropractors
end
