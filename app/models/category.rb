class Category < ActiveRecord::Base
  attr_accessible :name, :parent_id

  validates :name, :presence => true
  validates :name, :uniqueness => true
end
