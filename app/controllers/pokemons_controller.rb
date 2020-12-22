class PokemonsController < ApplicationController

    def index
        pokemons = Pokemon.all 
        render json: PokemonSerializer.new(pokemons)
    end 

    def show
        pokemon = Pokemon.find(params[:id]) 
        render json: PokemonSerializer.new(pokemon)
    end 

    def create 
        pokemon = Pokemon.create(
            nickname: Faker::Name.first_name,
            species: Faker::Games::Pokemon.name,
            trainer: Trainer.find(params[:trainer_id])
        )
        render json: pokemon
    end

    def destroy 
        pokemon = Pokemon.find(params[:id]) 
        pokemon.destroy

        render json: PokemonSerializer.new(pokemon).serialized_json
    end 
end
