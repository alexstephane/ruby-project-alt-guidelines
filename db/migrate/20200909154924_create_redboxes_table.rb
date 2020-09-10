class CreateRedboxesTable < ActiveRecord::Migration[5.2]
  def change
    create_table :redboxes do |t|
      t.integer :customer_id
      t.integer :movie_id
      t.integer :rating
    end 
  end
end
