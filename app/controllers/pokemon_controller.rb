class PokemonController < ApplicationController
  def capture
  	@pokemon = Pokemon.find(params[:id])
	@trainer = current_trainer
  	@pokemon.trainer_id = @trainer.id
  	@pokemon.save
  	redirect_to root_path
  end
  def damage
    @pokemon = Pokemon.find(params[:id])
    @pokemon.health = @pokemon.health - 10
    
    if @pokemon.health <= 0
      @pokemon.destroy
    else
      @pokemon.save
    end
    redirect_to trainer_path(@pokemon.trainer_id)
  end
  
  def heal
    @pokemon = Pokemon.find(params[:id])
    if @pokemon.health <= 100
      @pokemon.health=100
      @pokemon.save
      redirect_to trainer_path(@pokemon.trainer_id)
    end
  end

end
