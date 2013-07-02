Magpie::Application.routes.draw do
	resources :users, only: [:show, :new, :create, :index]
	match '/signup' => 'users#news'

	resources :sessions, only: [:create]
	match '/signin' => 'sessions#new'
	match '/signout' => 'sessions#destroy'

	resources :lists, only: [:index, :show]

	root to: redirect('/signup')
end
