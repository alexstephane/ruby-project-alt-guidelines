class CreateRedboxsTable < ActiveRecord::Migration[5.2]
  def change
    create_table :redboxs do |t|
      t.string :customer
      t.string :movie
      t.integer :rating
    end 
  end
end
