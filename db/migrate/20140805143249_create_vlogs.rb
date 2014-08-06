class CreateVlogs < ActiveRecord::Migration
  def change
    create_table :vlogs do |t|
      t.string :name
      t.text :description
      t.integer :year_founded

      t.timestamps
    end
  end
end
