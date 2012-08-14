class DecksController < ApplicationController
  # CRUD
  # always try to use 7 methods - index, new, create, show, destroy, edit, update
  def index
    @decks = Deck.all
  end
  
  def new
    @deck = Deck.new
  end
  
  def create
    @deck = Deck.new(params[:deck]) #params is a hash with indifferent access
    @deck.save
    #redirect_to "/decks" # # # 1-1 replacement decks_path(@deck) to "/decks" # actually don't need decks_path
    redirect_to @deck
  end
  
  def show() 
    @deck = Deck.find(params[:id])
  end
  
  def destroy
    @deck = Deck.find(params[:id])
    Deck.destroy(@deck)
    redirect_to decks_path
  end
  
  def edit
    @deck = Deck.find(params[:id])
  end
  
  def update
    @deck = Deck.find(params[:id])
    @deck.update_attributes(params[:deck])
    redirect_to @deck
  end
  
end