class CreateMaterialCodes < ActiveRecord::Migration
  def change
    create_table :material_codes do |t|
      t.string :name

      t.timestamps
    end
  end
end
