class Product < ActiveRecord::Base
  acts_as_citier

  attr_accessible :name, :purchase, :sale, :stocked, :type

  validates :name, :presence => true
  validates :name, :uniqueness => true
end
