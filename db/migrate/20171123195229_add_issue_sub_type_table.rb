class AddIssueSubTypeTable < ActiveRecord::Migration[5.1]
  def change
    create_table :issue_sub_types do |t|
          t.string :sub_issue
          t.timestamps
        end
  end
end
