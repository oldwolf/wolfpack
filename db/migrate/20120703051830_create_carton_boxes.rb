class CreateCartonBoxes < ActiveRecord::Migration
  def change
    create_table :carton_boxes do |t|
      t.decimal :length, :precision => 8, :scale => 2
      t.decimal :width, :precision => 8, :scale => 2
      t.decimal :height, :precision => 8, :scale => 2
      t.references :box_style
      t.references :material_code
      t.decimal :customer_length, :precision => 8, :scale => 2
      t.decimal :customer_width, :precision => 8, :scale => 2
      t.decimal :customer_height, :precision => 8, :scale => 2
    end
    add_index :carton_boxes, :box_style_id
    add_index :carton_boxes, :material_code_id

    create_citier_view(CartonBox)
  end

  def self.down
    drop_citier_view(CartonBox)
    drop_table :carton_boxes
  end
end
