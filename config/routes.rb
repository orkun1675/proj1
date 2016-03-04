Rails.application.routes.draw do
	root to: 'home#index'
	devise_for :trainers
	resources :trainers
	resources :pokemons
	patch 'capture', :to => 'pokemons#capture'
	post 'damage', :to => 'pokemons#damage'
	patch 'heal', :to => 'pokemons#heal'
	patch 'attack', :to => 'pokemons#attack'
end
