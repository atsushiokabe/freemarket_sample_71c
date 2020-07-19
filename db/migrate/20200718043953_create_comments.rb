class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.text :comment, null: false
      t.references :user, null: false
      t.references :item, null: false
      t.timestamps
    end
  end
end
