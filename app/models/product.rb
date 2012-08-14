class Product < ActiveRecord::Base
  acts_as_citier

  attr_accessible :name, :purchase, :sale, :stocked, :type

  validates :name, :presence => true, :uniqueness => { :case_sensitive => false }
end
