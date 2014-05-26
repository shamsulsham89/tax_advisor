class CreateMailings < ActiveRecord::Migration
  def change
    create_table :mailings do |t|
      t.string :email
      t.string :from
      t.string :subject
      t.text :body

      t.timestamps
    end
  end
end
