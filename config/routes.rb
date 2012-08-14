Flashcard::Application.routes.draw do

  resources :decks # # # Replaces the following 10 lines of code
  # get "/decks" => "decks#index"
  # get "/decks/new" => "decks#new"
  # get "/decks/:id" => "decks#show", as: :deck
  # get "/decks/:id/edit" => "decks#edit"
  #   
  # delete "/decks/:id" => "decks#destroy"
  #   
  # post "/decks" => "decks#create"
  #   
  # put "/decks/:id" => "decks#update"
  
end
