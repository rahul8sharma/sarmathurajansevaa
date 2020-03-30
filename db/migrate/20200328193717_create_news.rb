class CreateNews < ActiveRecord::Migration[5.1]
  def change
    create_table :news do |t|
      t.string :name
      t.text :description
      t.string :link
      t.string :image

      t.timestamps
    end
  end
end
