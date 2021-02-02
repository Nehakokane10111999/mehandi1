class CreateCusts < ActiveRecord::Migration[6.1]
  def change
    create_table :custs do |t|
      t.string :name
      t.bigint :mobile
      t.string :email
      t.string :password_digest
      t.string :address
      t.date :dob

      t.timestamps
    end
    add_index :custs, :email, unique: true
  end
end
