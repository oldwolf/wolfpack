class Currency < ActiveRecord::Base
  attr_accessible :accuracy, :active, :code, :name, :rounding
end
