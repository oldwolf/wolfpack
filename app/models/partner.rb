class Partner < ActiveRecord::Base
  attr_accessible :active, :agent_id, :credit_limit, :email, :is_customer, :is_supplier, :name, :registration_no, :search_key, :website
end
