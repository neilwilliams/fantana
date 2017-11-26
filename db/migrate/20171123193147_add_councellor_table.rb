class AddCouncellorTable < ActiveRecord::Migration[5.1]
  def change
    create_table :councellors do |t|
          t.string :name
          t.timestamps
        end
  end
end
