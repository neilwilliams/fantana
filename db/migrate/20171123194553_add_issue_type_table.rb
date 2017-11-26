class AddIssueTypeTable < ActiveRecord::Migration[5.1]
  def change
    create_table :issue_types do |t|
          t.string :issue
          t.timestamps
        end
  end
end
