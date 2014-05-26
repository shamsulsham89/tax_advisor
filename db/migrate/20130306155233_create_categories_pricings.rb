class CreateCategoriesPricings < ActiveRecord::Migration
  def up
    create_table :categories_pricings, :id => false do |t|
      t.integer :category_id
      t.integer :pricing_id
    end
  end

  def down
    drop_table :categories_pricings
  end
end
