class CreatePartners < ActiveRecord::Migration
  def change
    create_table :partners do |t|
      t.string :name
      t.decimal :credit_limit, :precision => 16, :scale => 6
      t.boolean :is_supplier
      t.boolean :active, :default => true
      t.integer :agent_id
      t.string :email
      t.string :website
      t.boolean :is_customer
      t.string :search_key
      t.string :registration_no

      t.timestamps
    end
  end
end
