class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :email
      t.string :password
      t.string :bio
      t.string :avatar
      t.boolean :private

      t.timestamps null: false
    end
  end
end
