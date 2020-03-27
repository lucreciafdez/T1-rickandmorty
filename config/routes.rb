Rails.application.routes.draw do
  get 'character/index'
  get 'character/show'
  get 'episodios/index'
  get 'episodios/show'
  get '/', to: 'welcome#index'
  resources :episodios

end
