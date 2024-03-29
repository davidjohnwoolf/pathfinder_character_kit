class CharactersController < ApplicationController
  before_action :authenticate_user!
  before_action :find_character, only: [:show, :edit, :update, :destroy]

  def index
    @characters = Character.all
  end

  def show
  end

  def new
    @character = Character.new
    @character.skills.build
    @character.weapons.build
  end

  def create
    @character = Character.new(character_params)
    @character.user_id = current_user.id
    if @character.save
      redirect_to characters_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @character.update_attributes(character_params)
      redirect_to character_path(@character.id)
    else
      render :edit
    end
  end

  def destroy
    @character.destroy
    redirect_to characters_url
  end

  private

  def find_character
    @character = Character.find(params[:id])
  end

  def character_params
    params.require(:character).permit(:name, :alignment, weapons_attributes: [:name, :description, :id, :_destroy], skills_attributes: [:name, :rank, :class_skill, :id, :_destroy])
  end

end
