class CreateDriverslists < ActiveRecord::Migration[5.0]
  def change
    create_table :driverslists do |t|
      t.string :name

      t.timestamps
    end
  end
end
