class PokemonsController < ApplicationController

	def capture
		captured_pokemon = Pokemon.where(id: params[:id]).first
		captured_pokemon.trainer_id = current_trainer.id
		captured_pokemon.save
		redirect_to root_path
	end

	def damage
		damaged_pokemon = Pokemon.where(id: params[:id]).first
		damaged_pokemon.health -= 10
		if damaged_pokemon.health <= 0
			damaged_pokemon.destroy
		else
			damaged_pokemon.save
		end
		redirect_to trainer_path(current_trainer)
	end

	def new
		@pokemon = Pokemon.new		
	end

	def create
		pokemon = Pokemon.create(user_params)
		pokemon.level = 1
		pokemon.health = 100
		pokemon.trainer_id = current_trainer.id
		if pokemon.save
			redirect_to trainer_path(current_trainer)
		else
			if pokemon.name != ""
				error = "There is already a pokemon with the name #{pokemon.name}!"
			else
				error = "A name is required to create a pokemon!"
			end
			flash[:error] = pokemon.errors.full_messages.to_sentence
			redirect_to new_pokemon_path()
		end
	end

	def user_params
    	params.require(:pokemon).permit(:name)
  	end

end
