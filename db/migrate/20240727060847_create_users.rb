class CreateUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :users do |t|
      t.integer :department_id
      t.string :first_name
      t.string :last_name
      t.string :address
      t.integer :age
      t.string :email

      t.timestamps
    end
  end
end
