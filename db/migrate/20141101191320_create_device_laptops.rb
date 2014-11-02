class CreateDeviceLaptops < ActiveRecord::Migration
  def change
    create_table :device_laptops do |t|
      t.string :brand
      t.string :cpu
      t.string :ram
      t.string :disk
      t.string :graphics

      t.timestamps
    end
  end
end
