class CreateConcerts < ActiveRecord::Migration
  def change
    create_table :concerts do |t|
      
      t.string :band
      t.datetime :date
      t.string :venue
      t.string :city
      t.text :description


      t.timestamps null: false
    end
  end
end
