Magpie::Application.routes.draw do
	match '/lists' => 'lists#index'
	resources :users, only: [:show, :new, :create]
end
