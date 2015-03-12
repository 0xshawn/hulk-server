class RemoveUnusedColumns < ActiveRecord::Migration
  def change
    remove_column :hosts, :ip, :string
    remove_column :hosts, :cpu, :string
    remove_column :hosts, :mem, :string
    remove_column :hosts, :storage, :string
  end
end
