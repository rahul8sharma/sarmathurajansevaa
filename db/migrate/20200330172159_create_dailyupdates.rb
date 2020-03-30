class CreateDailyupdates < ActiveRecord::Migration[5.1]
  def change
    create_table :dailyupdates do |t|
      t.text :description

      t.timestamps
    end
  end
end
