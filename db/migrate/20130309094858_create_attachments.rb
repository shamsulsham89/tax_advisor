class CreateAttachments < ActiveRecord::Migration
  def change
    create_table :attachments do |t|
      t.string :avatar
      t.integer :mailing_id

      t.timestamps
    end
    #add_index :attachments, :mailing_id
  end
end
