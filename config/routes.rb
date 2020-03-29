Rails.application.routes.draw do
  get 'locations/index'
  get 'locations/show'
  get 'character/index'
  get 'character/show'
  get 'episodios/index'
  get 'episodios/show'
  get '/', to: 'episodios#welcome'
  resources :episodios
  resources :character
  resources :locations

end
