class CreateAccountTypes < ActiveRecord::Migration
  def change
    create_table :account_types do |t|
      t.string :name
      t.boolean :status

      t.timestamps
    end
  end
end
