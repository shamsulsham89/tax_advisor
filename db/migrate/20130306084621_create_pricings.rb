class CreatePricings < ActiveRecord::Migration
  def change
    create_table :pricings do |t|
      t.string :month
      t.integer :time_period
      t.decimal :rate
      t.boolean :status

      t.timestamps
    end
  end
end
