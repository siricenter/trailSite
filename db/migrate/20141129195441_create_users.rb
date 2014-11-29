class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :password
      t.string :salt
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :user_type

      t.timestamps
    end
  end
end
