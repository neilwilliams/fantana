class AddStatusEnumToEnquiries < ActiveRecord::Migration[5.1]
  def change
    add_column :enquiries, :issue_status, :integer, default: 0
  end
end
