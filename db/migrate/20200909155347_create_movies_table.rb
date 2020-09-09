class CreateMoviesTable < ActiveRecord::Migration[5.2]
  def change
    create_table :movies do |t|
      t.string :title
      t.string :Date
      t.integer :quantity
    end 
  end
end
