class CharactersController < ApplicationController

  def index
    @characters = Character.all
  end

  def show
    @character = Character.find(params[:id])
  end

  def new
    @character = Character.new
  end

  def create
    @character = Character.new(character_params)
    if @character.save
      redirect_to character_path
    else
      render :new
    end
  end

  def edit
    @character = Character.find(params[:id])
  end

  def update
    if @character.update_attribute(character_params)
      redirect_to character_path(@character.id)
    else
      render :edit
    end
  end

  def destroy
    @character.destroy
    redirect_to characters_path
  end

  private

  def character_params
    params.require(:character).permit(:name, :alignment, :deity, :size, :gender, :age, :height, :weight, :skin, :hair, :eyes)
  end

end
