class DecksController < ApplicationController
  
  def index
    @decks = Deck.all
  end
  
  def new
    @deck = Deck.new
  end
  
  def create
    @deck = Deck.new(params[:deck]) #params is a hash with indifferent access
    @deck.save
    redirect_to "/decks"
  end
  
  def show() 
    @deck = Deck.find(params[:id])
  end
  
  def destroy
    @deck = Deck.find(params[:id])
    Deck.destroy(@deck)
    redirect_to "/decks"
  end
  
  def edit
    @deck = Deck.find(params[:id])
  end
  
  def update
    @deck = Deck.find(params[:id])
    @deck.update_attributes(params[:deck])
    redirect_to "/decks"
  end
  
end