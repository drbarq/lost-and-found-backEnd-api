class RemoveQrCodeFromUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :qr_Code, :string
  end
end
