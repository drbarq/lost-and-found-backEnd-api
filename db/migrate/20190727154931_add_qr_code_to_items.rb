class AddQrCodeToItems < ActiveRecord::Migration[5.2]
  def change
    add_column :items, :qr_code, :string
  end
end
