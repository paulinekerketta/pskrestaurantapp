class CreateCashmeouts < ActiveRecord::Migration[5.0]
  def change
    create_table :cashmeouts do |t|
      t.date :date
      t.string :name
      t.integer :drop
      t.decimal :sub_total
      t.integer :total_delivery
      t.decimal :del_charge
      t.decimal :extra
      t.decimal :toget

      t.timestamps
    end
  end
end
