class Deck < ActiveRecord::Base
  has_many :cards, :dependent => :destroy # added to illustrate the database relationship # it's fellow was already added to cards
  attr_accessible :name
end