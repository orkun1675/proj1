class AddHealthInPokemons < ActiveRecord::Migration
  def change
  	add_column :pokemons, :health, :integer
  end
end
