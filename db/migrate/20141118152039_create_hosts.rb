class CreateHosts < ActiveRecord::Migration
  def change
    create_table :hosts do |t|
      t.string :hostname
      t.string :description
      t.string :ip
      t.string :cpu
      t.string :mem
      t.string :storage

      t.timestamps
    end
  end
end
