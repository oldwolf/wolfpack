class CreateBoxStyles < ActiveRecord::Migration
  def change
    create_table :box_styles do |t|
      t.string :name
      t.text :draft_drawing

      t.timestamps
    end
  end
end
