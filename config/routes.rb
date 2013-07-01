Magpie::Application.routes.draw do
	match '/lists' => 'lists#index'
	resources :users, only: [:show, :new, :create, :index]

	resources :sessions, only: [:create]
	match '/signin' => 'sessions#new'

end
