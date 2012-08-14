class CartonBox < Product
  acts_as_citier

  belongs_to :box_style
  belongs_to :material_code

  attr_accessor :box_style_name, :material_code_name
  attr_accessible :box_style_name, :material_code_name, :customer_height, :customer_length, :customer_width, :height, :length, :width, :box_style_id, :material_code_id

  validates :customer_height, :customer_length, :customer_width, :height, :length, :width, :numericality => true
end
