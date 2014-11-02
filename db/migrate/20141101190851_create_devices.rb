class CreateDevices < ActiveRecord::Migration
  def change
    create_table :devices do |t|
      t.string :type
      t.integer :type_id

      t.timestamps
    end
  end
end
