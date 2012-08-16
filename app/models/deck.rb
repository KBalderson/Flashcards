class Deck < ActiveRecord::Base
  has_many :cards, :dependent => :destroy # added to illustrate the database relationship # it's fellow was already added to cards
  belongs_to :user
  attr_accessible :name
end
