class CreateDevicePcs < ActiveRecord::Migration
  def change
    create_table :device_pcs do |t|
      t.string :brand
      t.string :cpu

      t.timestamps
    end
  end
end
