class CreateRooms < ActiveRecord::Migration
  def change
    create_table :rooms do |t|
      t.string 'roomnumber'
      t.text 'roomtype'
      t.text 'roomdescription'
      t.decimal 'roomprice'
      t.references 'hotel'
      t.timestamps
    end
  end
  def down; drop_table 'rooms' ; end
end
