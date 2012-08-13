class CreateDecks < ActiveRecord::Migration

  def change
    create_table :decks do |t| # create the decks table - t is the table builder object
      t.string :name # add name
      t.timestamps # create both created and updated timestamps (t.datetime :created_ad and t.datetime :updated_at)
    end
  end
end
