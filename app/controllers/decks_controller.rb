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
  
end