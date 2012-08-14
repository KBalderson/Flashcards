class CardsController < ApplicationController

  def index
    @deck = Deck.find(params[:deck_id])
  end
  
  def show
    @deck = Deck.find(params[:deck_id])
    @card = @deck.cards.find(params[:id])
  end
  
  def new
    @deck = Deck.find(params[:deck_id])
    @card = Card.new()
    @card.deck = @deck
  end
  
  def create
    deck = Deck.find(params[:deck_id])
    @card = Card.new(params[:card])
    @card.deck = deck
    @card.save
    redirect_to deck_cards_path(params[:deck_id])
  end
  
  def edit
    @deck = Deck.find(params[:deck_id])
    @card = Card.find(params[:id])
  end
  
  def update
    @deck = Deck.find(params[:deck_id])
    @card = Card.find(params[:id])
    @card.update_attributes(params[:card])
    redirect_to deck_card_path(@deck,@card)
  end
  
  def destroy
    @card = Card.find(params[:id])
    @card.destroy
    redirect_to deck_cards_path(params[:deck_id])
  end
  
end