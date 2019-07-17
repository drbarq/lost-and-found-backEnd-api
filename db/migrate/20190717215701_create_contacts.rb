class CreateContacts < ActiveRecord::Migration[5.2]
  def change
    create_table :contacts do |t|
      t.references :item, foreign_key: true
      t.belongs_to :contactable, polymorphic: true

      t.timestamps
    end
    add_index :contacts, [:contactable_id, :contactable_type]
  end
end
