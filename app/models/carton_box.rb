class CartonBox < Product
  acts_as_citier

  belongs_to :box_style
  belongs_to :material_code
  attr_accessible :customer_height, :customer_length, :customer_width, :height, :length, :width, :box_style_id, :material_code_id
end
