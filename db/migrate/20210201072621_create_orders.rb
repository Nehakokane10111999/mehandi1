class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.string :name
      t.bigint :mobile_no
      t.date :date
      t.string :address
      t.string :design_name

      t.timestamps
    end
  end
end
