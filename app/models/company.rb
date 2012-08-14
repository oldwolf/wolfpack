class Company < ActiveRecord::Base
  belongs_to :currency

  attr_accessible :email, :manufacturing_lead, :name, :registration_no, :website, :currency_id
end
