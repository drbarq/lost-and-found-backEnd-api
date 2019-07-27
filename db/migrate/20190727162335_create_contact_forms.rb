class CreateContactForms < ActiveRecord::Migration[5.2]
  def change
    create_table :contact_forms do |t|
      t.string :findee_message
      t.belongs_to :item, foreign_key: true

      t.timestamps
    end
  end
end
