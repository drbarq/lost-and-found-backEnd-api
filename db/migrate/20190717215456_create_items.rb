class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.references :user, foreign_key: true
      t.string :item_type
      t.string :item_name

      t.timestamps
    end
  end
end
