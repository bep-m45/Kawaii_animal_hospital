class CreateNotices < ActiveRecord::Migration[5.2]
  def change
    create_table :notices do |t|
      t.integer :category_id
      t.string :title
      t.text :body

      t.timestamps
    end
  end
end
