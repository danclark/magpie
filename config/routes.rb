Magpie::Application.routes.draw do
	resources :users, only: [:show, :new, :create, :index]
	match '/signup' => 'users#news'

	resources :sessions, only: [:create]
	match '/signin' => 'sessions#new'

	resources :lists, only: [:index, :show]
end
