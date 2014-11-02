class CreateDeviceMobiles < ActiveRecord::Migration
  def change
    create_table :device_mobiles do |t|
      t.string :platform
      t.string :model

      t.timestamps
    end
  end
end
