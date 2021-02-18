class CreateNotices < ActiveRecord::Migration[5.2]
  def change
    create_table :notices do |t|
      t.string :title
      t.text :body
      t.integer :category_id
      t.json :images

      t.timestamps
    end
  end
end
