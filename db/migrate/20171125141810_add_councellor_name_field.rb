class AddCouncellorNameField < ActiveRecord::Migration[5.1]
  def change
    add_column :councellors, :first_name, :string
  end
end
