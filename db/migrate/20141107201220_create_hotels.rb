class CreateHotels < ActiveRecord::Migration
  def change
    create_table :hotels do |t|
      t.string :hotelname
      t.text :address
      t.text :website
      t.text :phone

      t.timestamps
    end
  end
end
