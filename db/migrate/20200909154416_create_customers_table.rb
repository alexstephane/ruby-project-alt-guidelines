class CreateCustomersTable < ActiveRecord::Migration[5.2]
  def change
    create_table :customers do |t|
      t.string :userName
    end 
  end
end
