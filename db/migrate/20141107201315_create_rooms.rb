class CreateRooms < ActiveRecord::Migration
  def change
    create_table :rooms do |t|
      t.string :roomnumber
      t.text :roomtype
      t.text :roomdescription
      t.decimal :roomprice, :precision => 8, :scale => 2
      t.references 'hotel'
      t.string :hotelname
      t.timestamps
    end
  end
end
