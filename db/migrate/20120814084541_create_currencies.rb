class CreateCurrencies < ActiveRecord::Migration
  def change
    create_table :currencies do |t|
      t.string :code
      t.string :name
      t.decimal :rounding
      t.boolean :active
      t.integer :accuracy

      t.timestamps
    end
  end
end
