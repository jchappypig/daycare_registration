class CreateDaycareCentres < ActiveRecord::Migration
  def change
    create_table :daycare_centres do |t|
      t.float :latitude
      t.float :longitude
      t.string :name
      t.string :address

      t.timestamps
    end
  end
end
