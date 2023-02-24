class AddChargeToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :charge, :integer, :default => 0
  end
end
