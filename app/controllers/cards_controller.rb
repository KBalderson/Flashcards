class CardsController < ApplicationController

  def index
    @deck = Deck.find(params[:deck_id])
  end
  
  def show
    @deck = Deck.find(params[:deck_id])
    @card = @deck.cards.find(params[:id]) # not Card.find() because that won't verify that it came from the correct deck
  end
  
  def new
    @deck = Deck.find(params[:deck_id])
    @card = @deck.cards.new()
  end
  
  def create
    deck = Deck.find(params[:deck_id])
    @card = deck.cards.new(params[:card])
    @card.save
    redirect_to deck_cards_path(params[:deck_id])
  end
  
  def edit
    @deck = Deck.find(params[:deck_id])
    @card = @deck.cards.find(params[:id])
  end
  
  def update
    @deck = Deck.find(params[:deck_id])
    @card = @deck.cards.find(params[:id])
    @card.update_attributes(params[:card])
    redirect_to deck_card_path(@deck,@card)
  end
  
  def destroy
    @deck = Deck.find(params[:deck_id])
    @card = @deck.cards.find(params[:id])
    @card.destroy
    redirect_to deck_cards_path(params[:deck_id])
  end
  
end