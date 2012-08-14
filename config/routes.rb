Flashcard::Application.routes.draw do
  
  root to: "decks#index"
  
  resources :decks do # # # Replaces the following 10 lines of code
    resources :cards, only: [:new, :create, :edit, :update, :destroy, :show]
  end
  
  resources :users, only: [:new, :create]
  
  get "sign_in" => "sessions#new"
  post "sign_in" => "sessions#create"
  get "sign_out" => "sessions#destroy"
  
  
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
