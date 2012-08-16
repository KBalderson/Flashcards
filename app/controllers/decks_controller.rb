class DecksController < ApplicationController
  # CRUD
  # always try to use 7 methods - index, new, create, show, destroy, edit, update
  def index 
    if signed_in?
      @user = current_user
    else
      redirect_to sign_in_path
    end
  end
  
  def new
    @deck = Deck.new
  end
  
  def create
    @deck = Deck.new(params[:deck]) #params is a hash with indifferent access
    @deck.user = current_user
    @deck.save
    #redirect_to "/decks" # # # 1-1 replacement decks_path(@deck) to "/decks" # actually don't need decks_path
    redirect_to @deck
  end
  
  def show() 
    @user = current_user
    @deck = @user.decks.find(params[:id])
    @cards = @deck.cards # where possible, call methods that interact with the model in the controller
    #redirect_to deck_cards_path(@deck)
  end
  
  def destroy
    @user = current_user
    @deck = @user.decks.find(params[:id])
    Deck.destroy(@deck)
    redirect_to decks_path
  end
  
  def edit
    @user = current_user
    @deck = @user.decks.find(params[:id])
  end
  
  def update
    @user = current_user
    @deck = @user.decks.find(params[:id])
    @deck.update_attributes(params[:deck])
    redirect_to @deck
  end
  
end
