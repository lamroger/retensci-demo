class Category < ActiveRecord::Base
  has_many :categories_item
  has_many :items, :through => :categories_items
end
