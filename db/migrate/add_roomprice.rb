class ChangeRooms < ActiveRecord::Migration
  def change
    change_table :rooms do |t|
      t.decimal :roomprice
    end
  end
end