class CreatePoissons < ActiveRecord::Migration[7.1]
  def change
    create_table :poissons do |t|
      t.string :name
      t.text :image
      t.float :price
      t.string :rarity
      t.text :description
      t.string :nutriscore

      t.timestamps
    end
  end
end
