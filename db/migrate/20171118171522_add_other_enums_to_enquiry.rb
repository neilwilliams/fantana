class AddOtherEnumsToEnquiry < ActiveRecord::Migration[5.1]
  def change
    add_column :enquiries, :enquiry_type, :integer, default: 0
    add_column :enquiries, :action_type, :integer, default: 0
  end
end
