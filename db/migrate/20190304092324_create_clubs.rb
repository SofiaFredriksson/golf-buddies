class CreateClubs < ActiveRecord::Migration[5.2]
  def change
    create_table :clubs do |t|
      t.string :name
      t.text :info
      t.string :location

      t.timestamps
    end
  end
end
