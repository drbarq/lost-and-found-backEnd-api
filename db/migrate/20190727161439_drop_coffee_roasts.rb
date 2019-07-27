class DropCoffeeRoasts < ActiveRecord::Migration[5.2]
  def up
    drop_table :coffee_roasts
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
