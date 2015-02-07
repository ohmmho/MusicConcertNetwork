class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|

      t.string :mail
      t.text :comment_field
      t.timestamps null: false
    end
  end
end
