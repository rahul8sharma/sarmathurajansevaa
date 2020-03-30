class CreateContributors < ActiveRecord::Migration[5.1]
  def change
    create_table :contributors do |t|
      t.string :name
      t.text :description
      t.integer :money
      t.string :image

      t.timestamps
    end
  end
end
