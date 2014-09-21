class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.text :description
      t.float :price
      t.integer :count
      t.text :categories

      t.float :weight
      t.float :width
      t.float :height
      t.float :length

      t.timestamps
    end
  end
end
