class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name
      t.decimal :manufacturing_lead
      t.string :email
      t.string :website
      t.string :registration_no
      t.references :currency

      t.timestamps
    end
    add_index :companies, :currency_id
  end
end
