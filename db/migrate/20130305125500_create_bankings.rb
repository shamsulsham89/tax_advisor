class CreateBankings < ActiveRecord::Migration
  def change
    create_table :bankings do |t|
      t.string :name
      t.integer :account_no
      t.string :address1
      t.string :address2
      t.string :city
      t.string :state
      t.string :country
      t.integer :zip_code
      t.boolean :status

      t.timestamps
    end
  end
end
