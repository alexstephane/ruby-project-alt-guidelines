class AddName < ActiveRecord::Migration[5.2]
  def change
    add_column :customers, :name, :string
    

  end
end
