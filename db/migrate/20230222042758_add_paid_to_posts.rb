class AddPaidToPosts < ActiveRecord::Migration[7.0]
  def change
    add_column :posts, :paid, :boolean , :default => false
    add_column :posts, :charge, :integer, :default =>  false
    #Ex:- :default =>''
  end
end
