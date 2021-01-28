class CreateNotices < ActiveRecord::Migration[5.2]
  def change
    create_table :notices do |t|
      t.string :title
      t.text :text
      t.string :image_id
      t.integer :category_id
      t.timestamps
    end
  end
end
